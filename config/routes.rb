Rails.application.routes.draw do
  scope 'admin' do
    get 'dashboard', to: 'admin#index'
    # user
    get 'user', to: 'admin/user#show'
    # order
    get 'order', to: 'admin/order#show'
    get 'confirm-order', to: 'admin/order#confirm'
    get 'cancel-order', to: 'admin/order#cancel'
    # category
    get 'add-category', to: 'admin/category#new'
    post 'add-category', to: 'admin/category#save'
    get 'all-category', to: 'admin/category#show'
    get 'delete-category', to: 'admin/category#delete'
    get 'edit-category', to: 'admin/category#edit'
    post 'update-category', to: 'admin/category#update'
    # tour
    get 'add-tour', to: 'admin/tour#new'
    post 'add-tour', to: 'admin/tour#save'
    get 'all-tour', to: 'admin/tour#show'
    get 'delete-tour', to: 'admin/tour#delete'
    get 'edit-tour', to: 'admin/tour#edit'
    post 'update-tour', to: 'admin/tour#update'
    post 'add-gallery', to: 'admin/tour#add_gallery'
    get 'all-gallery', to: 'admin/tour#all_gallery'
    get 'delete-gallery', to: 'admin/tour#delete_gallery'
    # blog-category
    get 'add-blog-category', to: 'admin/blog_category#new'
    post 'add-blog-category', to: 'admin/blog_category#save'
    get 'all-blog-category', to: 'admin/blog_category#show'
    get 'delete-blog-category', to: 'admin/blog_category#delete'
    get 'edit-blog-category', to: 'admin/blog_category#edit'
    post 'update-blog-category', to: 'admin/blog_category#update'
    # blog
    get 'add-blog', to: 'admin/blog#new'
    post 'add-blog', to: 'admin/blog#save'
    get 'all-blog', to: 'admin/blog#show'
    get 'delete-blog', to: 'admin/blog#delete'
    get 'edit-blog', to: 'admin/blog#edit'
    post 'update-blog', to: 'admin/blog#update'
  end

  root    "home#index"
  resources :users
  get     "home"          => "home#index"
  get     "login"         => "session#new"
  post    "check_login"   => "session#create"
  get     "logout"        => "session#destroy"
  get     "tour-detail"   => "home#tour_detail"
  get     "blog"          => "home#blog"
  get     "blog-detail"   => "home#blog_detail"
  get     "tour"          => "home#tour"
  get     "about"         => "home#about"
  get     "place"         => "home#place"
  get     "your-order"    => "home#your_order"
  post    "corder"         => "home#order"
  post    "search"        => "home#search"
  post    "blog-search"   => "home#blog_search"

end
