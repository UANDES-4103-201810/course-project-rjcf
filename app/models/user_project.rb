class UserProject < ApplicationRecord
	has many :fund_types, dependent: :delete_all, validate: false
	belongs_to :user
	belongs_to :admins_project

	validates :start_date, :finish_date, :name, :favorite, presence: true
	validate :date_cannot_be_in_the_past

	def date_cannot_be_in_the_past
    	  if start_date.present? && start_date < Date.today
     	   errors.add(:start_date, "Can't be in the past")
    	  end
  	end
	
end

