class Category < ApplicationRecord
	self.inheritance_column = nil
 	attr_accessor :type
	belongs_to :proyect

end
