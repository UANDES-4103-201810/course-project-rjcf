class Proyect < ApplicationRecord
	 has_many :users , through: :user_proyects 
	 has_many :users , through: :user_fund_projects
	 has_many :user_proyects
	 belongs_to :category
	 has_one :promise
	 has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
	 validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

	 def self.search(search)
		 where("name LIKE ? OR description LIKE ?", "%#{search}%", "%#{search}%")
	 end
end
