class Category < ApplicationRecord
	self.inheritance_column = nil
 	attr_accessor :type
	has_many :proyects
	

end
