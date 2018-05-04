class User < ApplicationRecord
	has_one :use_role
	has_many :proyects, through: :user_projects
	has_many :proyects, through: :user_fund_projects
end
