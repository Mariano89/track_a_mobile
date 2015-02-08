class UsersController < ApplicationController

	def new 
		@user = User.new
	end

	def create
		@user = User.new (params.require(:user).permit(:name, :email, :password, :password_confirmation))

		if @user.save 
			redirect to cars_path
		else
			render :new
		end
	end

end
