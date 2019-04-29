class SessionsController < ApplicationController

	def new
		
	end

	def create
  @user = User.find_by(gmail: params[:session][:email])
  
  puts " =============== #{params[:session][:password]}--------------------"

  puts @user.inspect

  puts "------"

 
  
  if @user && @user.authenticate(params[:session][:password])
    session[:user_id] = @user.id
    flash[:success] = "Login successful"
    redirect_to users_path()
  else
    flash[:danger] = "Login unsuccessful"
    redirect_to 'login'
  end 
end 

def destroy 
  if session[:user_id] = nil 
    flash[:success] = "logout successful"
    redirect_to users_path()
  else 
    flash[:success] = "Logout successful"
  end
end

end



