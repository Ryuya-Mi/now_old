Rails.application.routes.draw do
  root 'rooms#index'
  resources :rooms do
    resources :nows
    resources :olds
    resources :votes
  end
end
