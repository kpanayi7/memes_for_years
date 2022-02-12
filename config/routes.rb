Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'
  #   resources :meme_creator_listing do
  #   # resources :bookings, except: [:index, :show, :update, :edit]
  # end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # get '/my_meme_creator_listings', to: 'meme_creator_listings#index'
  # get '/my_bookings', to: 'bookings#index'
  resources :meme_creator_listings, only: [:index, :show, :create] do
  resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:index, :show]
end
