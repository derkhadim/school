Rails.application.routes.draw do

  resources :matieres
  get 'preinscription/index'
  get 'matieres/notes'

  resources :laclasses
  resources :students do
  	collection do
  		get 'search'
  	end
	end
  devise_for :users
  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
