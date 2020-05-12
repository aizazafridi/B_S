Rails.application.routes.draw do

  devise_for :users

  root 'home#index'
  get 'home/browse_ac'
  get 'home/browse_cl'
  get 'home/search_cl/:tag', to: 'home#search_cl'
  get '/home/clip/:id', to: 'home#clip'
  get '/home/actress/:id', to: 'home#actress'
  get '/home/report_link/:id', to: 'home#report_link'

  resources :feature_clips
  resources :feature_actresses
  get 'demo/index'

  resources :actresses do
    member do
      get :delete
    end
  end

  resources :clips do
    member do
      get :delete
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
