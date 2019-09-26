Rails.application.routes.draw do

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
