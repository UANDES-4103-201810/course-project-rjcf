class PaymenMethod < ApplicationRecord
	belongs_to :user

	validates :card_number, :bank, :cardholder_name, presence: true
	validates :card_number, length: {minimum: 8, maximum: 19}, allow_blank: true

end
