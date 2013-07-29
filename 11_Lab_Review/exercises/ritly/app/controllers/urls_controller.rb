class UrlsController < ApplicationController
	before_filter :find_model

	def index
		@urls = Url.all
	end

	def new
		@url = Url.new
	end

	def create
		@url = Url.new permitted_attributes
		if @url.save
			redirect_to urls_path
		else
			render 'urls#new'
		end
	end

	private
	def find_model
		@model = Urls.find(params[:id]) if params[:id]
	end

	def permitted_attributes
		(params.require(:url).permit(:url, :random_url))
	end
end