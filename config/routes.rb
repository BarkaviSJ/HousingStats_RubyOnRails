Rails.application.routes.draw do
  resources :financingtypes
  get 'house_price_uk/index'
  resources :housingtypeprices
  resources :locations
#      root 'welcome#index'
      root 'house_price_uk#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
