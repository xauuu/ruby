class HomeController < ApplicationController
  def index
    @user = User.find_by id: session[:user_id]
    @category = Category.all
    @tour = Tour.take(6)
  end
  def tour_detail
    @category = Category.all
    @tour = Tour.find(params[:tour_id])
    @user = User.find_by id: session[:user_id]
  end
  def blog
    @category = Category.all
    @user = User.find_by id: session[:user_id]
    @blog_category = BlogCategory.all
    @blog = Blog.all
  end
  def blog_detail
    @category = Category.all
    @user = User.find_by id: session[:user_id]
    @blog = Blog.find(params[:blog_id])
  end
  def tour
    @category = Category.all
    @user = User.find_by id: session[:user_id]
  end
  def about
    @category = Category.all
    @user = User.find_by id: session[:user_id]
  end
end
