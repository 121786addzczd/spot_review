Rails.application.routes.draw do
  devise_for :users
  root 'homes#top'
  resources :training_spots, only: [:index, :show] do
      resources :reviews, only: [:index, :create]
  end
end
