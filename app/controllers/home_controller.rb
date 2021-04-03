class HomeController < ApplicationController
  def index
    @user = User.find_by id: session[:user_id]
  end
  def tour_detail
    @user = User.find_by id: session[:user_id]
  end
  def blog
    @user = User.find_by id: session[:user_id]
  end
  def blog_detail
    @user = User.find_by id: session[:user_id]
  end
  def tour
    @user = User.find_by id: session[:user_id]
  end
  def about
    @user = User.find_by id: session[:user_id]
  end
end
