class Admin::TourController < ApplicationController
  layout 'admin'
  def add_tour
    @category = Category.all
  end
  def save_tour
    @tour = Tour.new tour_params
    if @tour.save
      redirect_to all_tour_path
    else
      redirect_to add_tour_path
    end
  end
  def all_tour
    @tour =Tour.all
  end
  def delete_tour
    @tour = Tour.find(params[:tour_id])
    if @tour.destroy
      flash[:success] = "Xoá tour thành công"
      redirect_to all_tour_path
    else
      flash[:error] = "Xoá tour thất bại"
      render :all_tour
    end
  end
  def edit_tour
    @category = Category.all
    @tour = Tour.find(params[:tour_id])
  end
  def update_tour
    @tour = Tour.find(params[:tour_id])
    if @tour.update(tour_params)
      flash[:success] = "Cập nhật tour thành công"
      redirect_to all_tour_path
    else
      flash[:error] = "Cập nhật tour thất bại"
      render :all_tour
    end
  end
  def tour_params
    params.require(:tour).permit(:name, :categories_id, :img, :price, :rating, :day, :desc)
  end
end
