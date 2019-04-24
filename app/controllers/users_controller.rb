	class UsersController < ApplicationController

		def index
			@users = User.all
		end

		def show
			@user = User.find(params[:id])
		end


		def new
			@user = User.new
		end



		def create
			@user = User.new(user_params)	
			if @user.save
				session[:user_id] = @user.id 
				flash[:success] = "Created User Successfully"
			  redirect_to users_path()
			else
				flash[:danger] = "failed to create user"
			  render 'new'
		  end
		end
	
		def edit
			@user = User.find (params[:id]) 
		end


		def update
			@user = User.find(params[:id]) 
			if @user.update_attributes(user_params)
				redirect_to users_path
			else
				flash[:danger] = @user.errors.first
	  			redirect_back(fallback_location: root_path)
			end
		end

		def destroy
			@user = User.find(params[:id])
			@user.destroy
			redirect_to users_path
		end


private

		def user_params 
			params.required(:user).permit(:first_name, :last_name, :birth, :num_siblings, :shoe_size, :us_citizen, :password, :gmail)
		end

	end
