Rails.application.routes.draw do
  devise_for :users
  resources :discussions, only: %i[index new create]
  root to: "main#index"
end
