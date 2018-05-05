class User < ApplicationRecord
  has_one :user_role
  has_many :proyects, through: :user_projects
  has_many :proyects, through: :user_fund_projects
  
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :name, :username, :biography, :address, presence: true
  validates :email, presence: true, format: {with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/}
  validates :password, format: {with: /\A[a-zA-Z0-9\.]{8,12}\z/ , message: "must be between 8 to 12 alphanumeric characters"}
end
