class User < ApplicationRecord
	has_many :funds
	has_many :funds_types, through: :funds
	has_many :admins_projects
        has_many :user_projects, through: :admins_projects
	has_many :paymen_methods, dependent: :delete_all, validate: false
end
