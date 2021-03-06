Rails.application.routes.draw do
  resources :books
  namespace :api do
    namespace :v1 do
      resources :characters, only: [:index, :show, :create, :destroy, :update]
      resources :books, only: [:index, :show, :create, :destroy, :update]
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
