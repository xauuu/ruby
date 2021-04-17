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

  def add_gallery
    @gallery = Gallery.new gallery_params
    if @gallery.save 
      flash[:success] = "Thêm hình ảnh thành công"
      redirect_to all_gallery_path(:tour_id => params[:gallery][:tour_id])
    else
      flash[:error] = "Thêm ảnh thất bại"
      redirect_to all_gallery_path(:tour_id => params[:gallery][:tour_id])
    end
  end

  def all_gallery
    @gallery = Gallery.where("tour_id = ?", params[:tour_id])
  end

  def delete_gallery
    @gallery = Gallery.find(params[:gallery_id])
    if @gallery.destroy
      flash[:success] = "Xoá ảnh thành công"
      redirect_to all_gallery_path(:tour_id => @gallery.tour_id)
    else
      flash[:error] = "Xoá ảnh thất bại"
      redirect_to all_gallery_path(:tour_id => @gallery.tour_id)
    end
  end

  def tour_params
    params.require(:tour).permit(:name, :img, :price, :rating, :day, :desc, :category_id)
  end

  def gallery_params
    params.require(:gallery).permit(:tour_id, {img: []})
  end
end
