class Admin::BlogController < ApplicationController
    layout 'admin'
    def show
        @blog = Blog.all
    end

    def new
        @blog_category = BlogCategory.all
    end
    
    def save
        @blog = Blog.new blog_params
        if @blog.save
            flash[:success] = "Thêm tin tức thành công"
            redirect_to all_blog_path
        else
            flash[:success] = "Thêm tin tức thất bại"
            redirect_to add_blog_path
        end
    end

    def edit
        @blog = Blog.find(params[:id])
        @blog_category = BlogCategory.all
    end

    def update
        @blog = Blog.find(params[:id])
        if @blog.update(blog_params)
            flash[:success] = "Cập nhật tin tức thành công"
            redirect_to all_blog_path
        else
            flash[:success] = "Cập nhật tin tức thất bại"
            redirect_to all_blog_path
        end     
    end

    def delete
        @blog = Blog.find(params[:id])
        if @blog.destroy
            flash[:success] = "Xoá tin tức thành công"
            redirect_to all_blog_path
        else
            flash[:success] = "Xoá tin tức thất bại"
            redirect_to all_blog_path
        end
    end

    def blog_params
        params.require(:blog).permit(:title, :blog_category_id, :img, :desc, :content)
    end
end
