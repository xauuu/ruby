Rails.application.routes.draw do
  scope 'admin' do
    get 'dashboard', to: 'admin#index'
    # category
    get 'add-category', to: 'admin/category#add_category'
    post 'add-category', to: 'admin/category#save_category'
    get 'all-category', to: 'admin/category#all_category'
    get 'delete-category', to: 'admin/category#delete_category'
    get 'edit-category', to: 'admin/category#edit_category'
    post 'update-category', to: 'admin/category#update_category'
    # tour
    get 'add-tour', to: 'admin/tour#add_tour'
    post 'add-tour', to: 'admin/tour#save_tour'
    get 'all-tour', to: 'admin/tour#all_tour'
    get 'delete-tour', to: 'admin/tour#delete_tour'
    get 'edit-tour', to: 'admin/tour#edit_tour'
    post 'update-tour', to: 'admin/tour#update_tour'
    post 'add-gallery', to: 'admin/tour#add_gallery'
    get 'all-gallery', to: 'admin/tour#all_gallery'
    get 'delete-gallery', to: 'admin/tour#delete_gallery'
    # blog-category
    get 'add-blog-category', to: 'admin/blog_category#new'
    post 'add-blog-category', to: 'admin/blog_category#save'
    get 'all-blog-category', to: 'admin/blog_category#index'
    get 'delete-blog-category', to: 'admin/blog_category#delete'
    get 'edit-blog-category', to: 'admin/blog_category#edit'
    post 'update-blog-category', to: 'admin/blog_category#update'
    # blog
    get 'add-blog', to: 'admin/blog#new'
    post 'add-blog', to: 'admin/blog#save'
    get 'all-blog', to: 'admin/blog#index'
    get 'delete-blog', to: 'admin/blog#delete'
    get 'edit-blog', to: 'admin/blog#edit'
    post 'update-blog', to: 'admin/blog#update'
  end

  root    "home#index"
  get     "home"          => "home#index"
  get     "login"         => "session#new"
  post    "check_login"   => "session#create"
  get     "logout"        => "session#destroy"
  resources :users
  get     "tour-detail"   => "home#tour_detail"
  get     "blog"          => "home#blog"
  get     "blog-detail"   => "home#blog_detail"
  get     "tour"          => "home#tour"
  get     "about"          => "home#about"
end
