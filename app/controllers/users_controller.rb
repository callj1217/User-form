	class UsersController < ApplicationController

		def index
			@users = User.all
		end

		def show
			@users = User.all
			puts "-------------- lal la la the id is :  #{params[:id]} "

			@user = User.find_by(id: params[:id])
		end


		def new
			@user = User.new
		end



		def create
			@user = User.new(user_params)
			if @user.save
				redirect_to user_path(@user)
			end
		end

private

		def user_params 
			params.required(:user).permit(:firstName, :lastName)
		end
	end
