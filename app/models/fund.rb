class Fund < ApplicationRecord
	belongs_to :fund_type
	belongs_to :user
end
