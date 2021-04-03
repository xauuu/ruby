class UsersController < ApplicationController
  layout "login"
  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      flash[:success] = "Register success"
      redirect_to login_path
    else
      flash[:success] = "Register failed"
      render :new
    end
  end
  def show
    @user = User.find_by id: params[:id]
  end
  private
  def user_params
    params.require(:user).permit :email, :name, :password, :password_confirmation
  end
end