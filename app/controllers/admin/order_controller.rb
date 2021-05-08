class Admin::OrderController < ApplicationController
    layout 'admin'
    def show
        @pagy, @order = pagy(Order.all, items:5)
    end

    def confirm
        @order = Order.find(params[:id])
        @order.status = 1
        @order.save
        flash[:success] = "Xác nhận đơn hành thành công"
        redirect_to order_path
    end

    def cancel
        @order = Order.find(params[:id])
        @order.status = 2
        @order.save
        flash[:success] = "Đã huỷ đơn hàng"
        redirect_to order_path
    end
end
