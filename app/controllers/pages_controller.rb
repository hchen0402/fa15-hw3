class PagesController < ApplicationController
	def index
		@users = User.all
		@cats = Cat.all
	end

	def new
		@user = User.new 
	end

	def create
		User.create user_params
		redirect_to :root
	end

	def user_params
		params.require(:user).permit(:username, :email, :age, :gender)
	end
end
