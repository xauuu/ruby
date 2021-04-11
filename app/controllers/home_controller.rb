class HomeController < ApplicationController
  def index
    @user = User.find_by id: session[:user_id]
    @category = Category.all
    @tour = Tour.take(6)
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
