class MoviesController < ApplicationController
	before_action :find_movie, :only => [:edit, :update, :show]

	before_action :authenticate_user!, :only => [:new]
	
	def index
		@movies = Movie.all
	end

	def search
		@movies = Movie.where("title like ?", "%#{params[:search]}%")
	end

	def new
		@movie = Movie.new
	end

	def show
	end

	def create
		@movie = Movie.new permitted_attributes
		if @movie.save
			redirect_to movies_path, :notice => "your movie has been added!"
		else
			render 'new'
		end
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