Rails.application.routes.draw do
  scope 'admin' do
    get 'dashboard', to: 'admin#index'
    get 'add-category', to: 'admin/category#add_category'
    post 'add-category', to: 'admin/category#save_category'
    get 'all-category', to: 'admin/category#all_category'
    get 'delete-category', to: 'admin/category#delete_category'
    get 'edit-category', to: 'admin/category#edit_category'
    post 'update-category', to: 'admin/category#update_category'
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
