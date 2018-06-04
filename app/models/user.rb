class User < ApplicationRecord
  has_one :user_role
  has_many :proyects

  devise :database_authenticatable , :registerable , :recoverable , :rememberable , :trackable , :validatable ,
         :omniauthable , :omniauth_providers => [:facebook]

  def self.from_omniauth (auth)
    where(provider: auth.provider , uid: auth.uid ).first_or_create do | user |
      user.provider = auth.provider
      user.uid = auth.uid
      user.email = auth.info.email
      user.username = auth.info.username
      user.password = Devise.friendly_token[0 , 20]
    end
  end

  validates :email, presence: true, format: {with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/}
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

end
