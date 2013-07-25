class ShirtsController < ApplicationController
	before_action :find_shirt, :only => [:edit, :update]
	def index
		@shirts = Shirt.all
	end
	
	def search
		@shirts = Shirt.where("name like ?", "%#{params[:search]}%")
	end

	def new
		@shirt = Shirt.new
	end

	def create
		@shirt = Shirt.new permitted_attributes
		if @shirt.save
			redirect_to shirts_path
		else
			render 'new'
		end
	end

	def update
		@shirt = Shirt.find(params[:id])
		if @shirt.update_attributes permitted_attributes
			redirect_to shirts_path
		else
			render 'edit'
		end
	end

	protected
	def find_shirt
		@shirt = Shirt.find(params[:id])
	end

	def permitted_attributes
		(params.require(:shirt).permit(:name, :description))
	end
	
end	