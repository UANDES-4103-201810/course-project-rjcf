class UserRole < ApplicationRecord
 	validates :type, presence: true
	belongs_to :user
	self.inheritance_column = nil
 	attr_accessor :type

end
