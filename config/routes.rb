Rails.application.routes.draw do
  # /posts/1/comments/4
  resources :posts do
    resources :comments
  end
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :projects
  get 'projects', to:"projects#index"
  root 'main#main'
  devise_for :users
  get "home", to: 'home#index'
  resources :home
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
