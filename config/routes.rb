Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "site#home"

  resources :users, only: [:index, :new, :create, :show, :destroy]
end
