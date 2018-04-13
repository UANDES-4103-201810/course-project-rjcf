class FundType < ApplicationRecord
	has_many :funds
	has_many :user, through: :funds

	validates :type, :amount, :username, presence: true
end
