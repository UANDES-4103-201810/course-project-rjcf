class User < ApplicationRecord
	has_many :paymen_method
	has_many :funds_type, through: :fund
        has_many :payment_methods
end
