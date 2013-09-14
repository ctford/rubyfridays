class UsersController < ApplicationController

  def new
    @user = User.new  
  end

  def create
    @user = User.new(params[:first_name => params[:first_name], :last_name => params[:last_name], :age => params[:age]])
    @user.save
    redirect_to '/users/index'
  end

  def index
    @users = User.all
  end

end
