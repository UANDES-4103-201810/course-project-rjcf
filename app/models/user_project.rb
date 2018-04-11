class UserProject < ApplicationRecord
	has many :fund_types, dependent: :delete_all, validate: false
	belongs_to :user
	belongs_to :admins_project
	
end

