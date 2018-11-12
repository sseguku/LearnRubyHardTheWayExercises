Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #This is for the index page
  root 'posts#index', as: 'home'
  #
  get 'about' => 'pages#about', as: 'about'

  #
  resources :posts
end
