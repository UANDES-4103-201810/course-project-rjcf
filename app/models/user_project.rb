class UserProject < ApplicationRecord
	belongs_to :wishlist
	belongs_to :user
end
