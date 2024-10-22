Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
root 'pages#home'
get '/about', to:'pages#about', as: :about
resources :signups, only: [:new, :create]
get '/success', to: 'signups#success', as: :success

  # Defines the root path route ("/")
  # root "articles#index"
end
