Rails.application.routes.draw do
  root 'rooms#index'
  resources :rooms do
    resources :votes
    resources :comments
  end
end
