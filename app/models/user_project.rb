class UserProject < ApplicationRecord
	belongs_to :user
	belongs_to :proyect
end
