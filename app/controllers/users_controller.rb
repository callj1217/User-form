	class UsersController < ApplicationController

		def index
			@users = User.all
			@car = Car.find_by(params[:id])
		end

		def show
			@users = User.all
			@user = User.find_by(params[:id])
		end


		def new
			@user = User.new
		end



		def create
			@user = User.new(user_params)
			if @user.save
				redirect_to users_path
			end
		end
		def edit
			@user = User.find (params[:id]) 
		end


		def update
			@user = User.find(params[:id]) 
			if @user.update_attributes(user_params)
				redirect_to users_path
			end
		end

		def destroy
			@user = User.find(params[:id])
			@user.destroy
			redirect_to users_path
		end


private

		def user_params 
			params.required(:user).permit(:firstName, :lastName, :birth)
		end

	end
