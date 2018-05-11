class User < ApplicationRecord
  has_one :user_role
  has_many :proyects, through: :user_projects
  has_many :proyects, through: :user_fund_projects
  
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :email, presence: true, format: {with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/}

end
