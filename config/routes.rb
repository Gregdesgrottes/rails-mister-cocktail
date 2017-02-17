Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"
  resources :cocktails do
    resources :doses, only: [ :create, :new, :destroy ]
  end
  resources :doses, only: [:destroy]
  root "cocktails#index"
end
