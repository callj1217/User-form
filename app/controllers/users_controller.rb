class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @users = User.all
    puts "-------------- lal la la the id is :  #{params[:id]} "

    @user = User.find_by(id: params[:id])
  end

end
