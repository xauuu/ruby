class HomeController < ApplicationController

  def index
    @user = User.find_by id: session[:user_id]
    @category = Category.all
    @tour = Tour.take(6)
    @blog = Blog.last(3)
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
    @blog_view = Blog.order(view: :desc).take(4)
  end

  def blog_detail
    @category = Category.all
    @user = User.find_by id: session[:user_id]
    @blog_category = BlogCategory.all
    @blog = Blog.find(params[:blog_id])
    @recent = Blog.where.not(id: params[:blog_id]).last(5)

    @blog.view += 1
    @blog.save
  end

  def tour
    @category = Category.all
    if params[:category_id]
      @pagy, @tour = pagy(Tour.where("category_id = ?", params[:category_id]), items:6)
    else
      @pagy, @tour = pagy(Tour.all, items:6)
    end
    @user = User.find_by id: session[:user_id]
  end

  def about
    @category = Category.all
    @user = User.find_by id: session[:user_id]
  end

end
