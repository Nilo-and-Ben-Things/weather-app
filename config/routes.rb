Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'static_pages#index'
#  resources :static_pages
  namespace :api, defaults: { format: :json } do
    resources :locations, only: [:index, :create, :destroy]
    get 'search', to: 'locations#search'
    resource :weather, only: [:show]
  end
end
