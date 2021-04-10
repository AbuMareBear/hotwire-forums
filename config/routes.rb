Rails.application.routes.draw do
  resources :categories
  devise_for :users

  resources :discussions do
    resources :posts, only: %i[show create edit update destroy], module: :discussions
  end

  root to: "main#index"
end
