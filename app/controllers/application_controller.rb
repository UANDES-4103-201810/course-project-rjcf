class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

	def hello
		render html: "Welcome to JRCrowdFunding!

		       			Founders: - Rodrigo Ghersi

						  - Javier Huerta"
	end
end
