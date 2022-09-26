class UsersController < ApplicationController
  include Pagy::Backend
  def index
    @pagy , @user = pagy(User.all.order(created_at: :desc))  
  end

  def show
    @user = User.find(params[:id]) 
    flash[:alert] = "You are on a user page"
  end
end