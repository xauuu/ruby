class Admin::UserController < ApplicationController
    layout 'admin'
    def show
        @pagy, @user = pagy(User.all, items:5)
    end
end
