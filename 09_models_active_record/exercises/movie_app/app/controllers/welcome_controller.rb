class WelcomeController < ApplicationController

	def index
		@movies = Movies.all
	end
	
end

