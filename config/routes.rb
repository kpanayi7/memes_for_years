Rails.application.routes.draw do
  devise_for :users

  root to: 'meme_creator_listings#index'
    resources :meme_creator_listing do
    resources :bookings, except: [:index, :show, :update, :edit]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/my_meme_creator_listings', to: 'meme_creator_listings#my_meme_creator_listings'
  get '/my_bookings', to: 'bookings#index'
  get '/my_bookings/:id', to: 'bookings#show'
  resources :bookings, only: [:index, :show, :update, :destroy]
end
