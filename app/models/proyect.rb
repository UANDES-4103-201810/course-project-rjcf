class Proyect < ApplicationRecord
	 has_many :users , through: :user_proyects 
	 has_many :users , through: :user_fund_projects
	 has_many :user_proyects
	 has_one :category
	 has_one :promise
	
end
