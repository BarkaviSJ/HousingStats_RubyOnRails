Rails.application.routes.draw do
    get "house_price_uk/index", to: "pages#home"
    resources :financingtypes
    resources :housingtypeprices
    resources :locations
      root to: "house_price_uk#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
