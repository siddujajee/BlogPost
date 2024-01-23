Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  get ":id" => "dummy_posts#:id" ,to: "dummy_posts#show", as: :dummy_post
  get "dummy_posts/new", to:"dummy_posts#new", as: :new_post
  post "dummy_posts", to: "dummy_posts#create"
  root "dummy_posts#index"
end
