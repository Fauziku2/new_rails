class UsersController < ApplicationController

def index
  @user = User.all
end

def show
  @user = User.find(params[:id])
end

def new
  @user = User.new
end

  def create
    @new_user = User.new()
    @new_user.name = params[:user][:name]
    @new_user.email = params[:user][:email]
    @new_user.save

    redirect_to users_path
  end
end
