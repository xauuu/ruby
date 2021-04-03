class Admin::CategoryController < ApplicationController
  layout 'admin'
  def add_category
  end
  def save_category
    @category = Category.new category_params
    if @category.save
      flash[:success] = "Thêm danh mục thành công"
      redirect_to all_category_path
    else
      render :add_category
    end
  end
  def all_category
    @category = Category.all
  end
  def delete_category
    @cate = Category.find(params[:category_id])
    if @cate.destroy
      flash[:success] = "Xoá danh mục thành công"
      redirect_to all_category_path
    else
      flash[:error] = "Xoá danh mục thất bại"
      redirect_to all_category_path
    end
  end
  def edit_category
    @category = Category.find(params[:category_id])
  end
  def update_category
    @category = Category.find(params[:category_id])
    if @category.update(category_params)
      flash[:success] = "Cập nhật danh mục thành công"
      redirect_to all_category_path
    else
      flash[:error] = "Cập nhật danh mục thất bại"
      redirect_to all_category_path
    end
  end
  def category_params
    params.require(:category).permit :name, :desc
  end
end
