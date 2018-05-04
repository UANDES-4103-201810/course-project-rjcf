class Proyect < ApplicationRecord
	has_one :category
	has_many :promises
	belongs_to :user_projects
	belongs_to :user_fund_project
end
