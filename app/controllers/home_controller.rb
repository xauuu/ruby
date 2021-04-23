class HomeController < ApplicationController

  def index
    @home_active = 'active'
    @user = User.find_by id: session[:user_id]
    @category = Category.all
    @tour = Tour.take(6)
    @blog = Blog.last(3)
  end

  def tour_detail
    @tour_active = 'active'
    @category = Category.all
    @tour = Tour.find(params[:tour_id])
    @user = User.find_by id: session[:user_id]
  end

  def blog
    @blog_active = 'active'
    @category = Category.all
    @user = User.find_by id: session[:user_id]
    @blog_category = BlogCategory.all
    @blog = Blog.all
    @blog_view = Blog.order(view: :desc).take(4)
  end

  def blog_detail
    @blog_active = 'active'
    @category = Category.all
    @user = User.find_by id: session[:user_id]
    @blog_category = BlogCategory.all
    @blog = Blog.find(params[:blog_id])
    @recent = Blog.where.not(id: params[:blog_id]).last(5)

    @blog.view += 1
    @blog.save
  end

  def tour
    @tour_active = 'active'
    @category = Category.all
    if params[:category_id]
      @pagy, @tour = pagy(Tour.where("category_id = ?", params[:category_id]), items:6)
    elsif params[:rating]
      @pagy, @tour = pagy(Tour.where("rating = ?", params[:rating]), items:6)
    else
      @pagy, @tour = pagy(Tour.all, items:6)
    end
    @user = User.find_by id: session[:user_id]
  end

  def about
    @about_active = 'active'
    @category = Category.all
    @user = User.find_by id: session[:user_id]
  end

end
