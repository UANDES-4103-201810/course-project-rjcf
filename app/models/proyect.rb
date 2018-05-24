class Proyect < ApplicationRecord
	 has_many :users , through: :user_proyects 
	 has_many :users , through: :user_fund_projects
	 has_many :user_proyects
	 belongs_to :category
	 has_one :promise
	 has_attached_file :photo


	 validates_attachment_content_type :photo, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
	
end
