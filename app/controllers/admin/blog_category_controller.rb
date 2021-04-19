class Admin::BlogCategoryController < ApplicationController
    layout 'admin'
    def show
        @blog_category = BlogCategory.all
    end

    def new
    end

    def save
        @blog_category = BlogCategory.new blog_category_params
        if @blog_category.save
            flash[:success] = "Thêm danh mục thành công"
            redirect_to all_blog_category_path
        else
            render :new
        end
    end

    def edit
        @blog_category = BlogCategory.find(params[:id])
    end

    def update
        @blog_category = BlogCategory.find(params[:id])
        if @blog_category.update(blog_category_params)
            flash[:success] = "Cập nhật danh mục thành công"
            redirect_to all_blog_category_path
        else
            flash[:error] = "Cập nhật danh mục thất bại"
            redirect_to all_blog_category_path
        end
    end

    def delete 
        @blog_category = BlogCategory.find(params[:id])
        if @blog_category.destroy
            flash[:success] = "Xoá danh mục thành công"
            redirect_to all_blog_category_path
        else
            flash[:error] = "Xoá danh mục thất bại"
            redirect_to all_blog_category_path
        end
    end

    def blog_category_params
        params.require(:blog_category).permit :name, :desc
    end
end
