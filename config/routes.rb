Rails.application.routes.draw do
  resources :post_labels
  get 'label/index'
  get 'label/show'
  get 'label/new'
  get 'label/edit'
  get 'label/create'
  get 'label/update'
  get 'label/destroy'
  resources :posts
  devise_for :users
  root to: "home#index"
  get 'home/about'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
