Rails.application.routes.draw do
  resources :pendents
  resources :rings
  resources :earings
  resources :chains
  resources :jewelries
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
