class UsersController < ApplicationController

  def index
    @users = User.all
    @user = User.all
    @photos = Photo.all
  end

  def show
    @user = User.find(session[:user_id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_url, notice: "Thanks for signing up"
    else
      redirect_to signup_path
    end
  end

  def delete
    current_user.destroy
  end


  private
  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation, :photo_id, :avatar)
  end

end
