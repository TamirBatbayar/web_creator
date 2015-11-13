Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  resources :web_pages
  root to: 'web_pages#index'
  devise_for :users
  resources :users
end
