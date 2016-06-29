Rails.application.routes.draw do

  get 'preinscription/index'

  resources :laclasses
  resources :students
  devise_for :users
  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
