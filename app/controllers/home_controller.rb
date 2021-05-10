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
    @relate_tour = Tour.where("category_id = ?", @tour.category_id).where.not(id: params[:tour_id])
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
    elsif params[:sort_by]
      if params[:sort_by] == "tang_dan"
        @pagy, @tour = pagy(Tour.order(price: :asc), items:6)
      else
        @pagy, @tour = pagy(Tour.order(price: :desc), items:6)
      end
    else
      @pagy, @tour = pagy(Tour.all, items:6)
    end
    @user = User.find_by id: session[:user_id]
  end

  def place
    user = User.find_by id: session[:user_id]
    @category = Category.all
    @tour = Tour.where("name LIKE ?", "%#{"Quảng Binh"}%")
  end

  def about
    @about_active = 'active'
    @category = Category.all
    @user = User.find_by id: session[:user_id]
  end

  def order
    if session[:user_id]
      @order = Order.new order_params
      if @order.save
        redirect_to home_path
      else
        redirect_to :back
      end
    else
      redirect_to login_path
    end
  end

  def your_order
    @user = User.find_by id: session[:user_id]
    @category = Category.all
    @order = Order.where("user_id = ?", session[:user_id])
  end

  def search
    @tour_active = 'active'
    @category = Category.all
    @user = User.find_by id: session[:user_id]

    if !params[:search][:category_id].blank?
      @pagy, @tour = pagy(Tour.where("category_id = ? and name LIKE ?", params[:search][:category_id], "%#{params[:search][:key]}%"), items:6)
    else
      @pagy, @tour = pagy(Tour.where("name LIKE ?", "%#{params[:search][:key]}%"), items:6)
    end
    
    render :tour
  end

  def blog_search
    @blog_active = 'active'
    @category = Category.all
    @user = User.find_by id: session[:user_id]
    @blog_category = BlogCategory.all
    @blog_view = Blog.order(view: :desc).take(4)
    @blog = Blog.where("title LIKE ?", "%#{params[:search][:key]}%")
    render :blog
  end

  def order_params
    params.require(:order).permit(:user_id, :tour_id, :name, :phone, :address, :email, :note)
  end

end
