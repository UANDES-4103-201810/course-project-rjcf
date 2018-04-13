class User < ApplicationRecord
	has_many :funds
	has_many :funds_types, through: :funds
	has_many :admins_projects
        has_many :user_projects, through: :admins_projects
	has_many :paymen_methods, dependent: :delete_all, validate: false

	validates :name, :username, :biography, :address, presence: true
	validates :email, presence: true, format: {with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/}
  	validates :password, format: {with: /\A[a-zA-Z0-9\.]{8,12}\z/ , message: "must be between 8 to 12 alphanumeric characters"}
end	
