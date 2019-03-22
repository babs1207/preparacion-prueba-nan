Rails.application.routes.draw do
  devise_for :users
  resources :projects
  resources :projects, only: [] do
    post 'add_person'
  end
  resources :people
  resources :works, only: [:index, :destroy]
  root 'projects#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
