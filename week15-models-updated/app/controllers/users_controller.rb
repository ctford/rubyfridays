class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(:first_name => params[:first_name], :last_name => params[:last_name], :age => params[:age])
    @user.save
    redirect_to '/users'
  end

  def index
    @users = User.all
  end

  def edit
    @user = User.find(params[:id])
  end

  def show
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update_attributes(params[:user])
    render :text => "Hey! Updated successfully!!"
  end

end
