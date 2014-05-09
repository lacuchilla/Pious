class UsersController < ApplicationController
	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
		redirect_to users_path
	else
		redirect_to new_user_path, notice: "Please fill out both fields"
	end
	end
	
	def edit
		@user = User.find(params[:id])
	end
	
	def update
		@user = User.find(params[:id])
		@user.update(user_params)
		redirect_to root_path
	end
	
	def index
		@users = User.all
	end
	
	def show
		@user = User.find(params[:id])
	end
	
	def destroy
		@user = User.find(params[:id])
		@user.destroy
		redirect_to root_path
	end

private
	def user_params
	params.require(:user).permit(:storename, :address)
	end
end
