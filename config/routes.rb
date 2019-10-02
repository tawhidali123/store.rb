Rails.application.routes.draw do
  resources :items
  resources :users do
    resources :shops, only: [:new]
  end
  resources :shops, except: [:new] 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
