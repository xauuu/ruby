class Admin::CategoryController < ApplicationController
  layout 'admin'
  def new
  end
  def save
    @category = Category.new category_params
    if @category.save
      flash[:success] = "Thêm danh mục thành công"
      redirect_to all_category_path
    else
      render :new
    end
  end
  def show
    @pagy, @category = pagy(Category.all, items:6)
  end
  def delete
    @cate = Category.find(params[:category_id])
    if @cate.destroy
      flash[:success] = "Xoá danh mục thành công"
      redirect_to all_category_path
    else
      flash[:error] = "Xoá danh mục thất bại"
      redirect_to all_category_path
    end
  end
  def edit
    @category = Category.find(params[:category_id])
  end
  def update
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
