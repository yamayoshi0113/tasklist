Rails.application.routes.draw do
    root to: 'tasks#index'

get 'signup', to: 'users#new'
  resources :tasks, only: [:index, :show, :new, :create, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
