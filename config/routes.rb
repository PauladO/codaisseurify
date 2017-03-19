Rails.application.routes.draw do
  root 'artists#index'

  resources :artists do
    resources :songs, only: [:create]
  end
  resources :songs

end
