class UsersController < ApplicationController
  def index
    @user = User.all  
  end

  def show
    @user = User.find(params[:id]) 
    flash[:alert] = "You are on a user page"
  end
end