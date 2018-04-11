class FundType < ApplicationRecord
	has_many :funds
	has_many :user through:funds
end
