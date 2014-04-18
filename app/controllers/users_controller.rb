class UsersController < ApplicationController
	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		@user.save
	end
	
	def edit
	end
	
	def update
	end
	
	def index
	end
	
	def show
	end
	
	def destroy
	end

private
	def user_params
	params.require(:user).permit(:storename, :address)
	end
end
