Rails.application.routes.draw do
  resources :positions
  resources :magazines
  resources :oenologists
  devise_for :users
  resources :wine_strains
  resources :strains
  resources :wines

  root to: "wines#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
