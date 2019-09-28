Rails.application.routes.draw do

  root 'home#index'

  get 'home/browse_ac'

  get 'home/browse_cl'

  get 'home/clip'

  get 'home/actress'

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
