Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", as: :rails_health_check
 resources :dummy_posts do
  member do
    patch :publish
  end
  resources :feedbacks, only: [:create, :destroy]
   resource :cover_image, only: [:destroy], module: :dummy_posts
 end
  # Defines the root path route ("/")
  # get "dummy_posts/new", to:"dummy_posts#new", as: :new_post
  # post "dummy_posts", to: "dummy_posts#create", as: :dummy_posts
  # get "dummy_posts/:id" ,to: "dummy_posts#show", as: :dummy_post
  # get "dummy_posts/:id/edit", to:"dummy_posts#edit", as: :edit_posts
  # patch "dummy_posts/:id", to:"dummy_posts#update"
  # delete "dummy_posts/:id", to:"dummy_posts#destroy"
  root "dummy_posts#index"
end
