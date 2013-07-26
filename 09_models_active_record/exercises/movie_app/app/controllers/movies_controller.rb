class MoviesController < ApplicationController
	before_action :find_movie, :only => [:edit, :update]
	def index
		@movies = Movie.all
	end

	def search
		@movies = Movie.where("title like ?", "%#{params[:search]}%")
	end

	def update
		@movie = Movie.find(params[:id])
		if @movie.update_attributes permitted_attributes
			redirect_to movies_path
		else
			render 'edit'
		end
	end

	protected
	def find_movie
		@movie = Movie.find(params[:id])
	end

	def permitted_attributes
		(params.require(:movie).permit(:title, :description, :year_released))
	end
	
end