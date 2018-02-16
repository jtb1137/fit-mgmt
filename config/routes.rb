Rails.application.routes.draw do
  devise_for :clients, path: 'clients'
  devise_for :trainers, path: 'trainers'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # Define root route
end
