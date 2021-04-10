Rails.application.routes.draw do
  devise_for :users

  resources :discussions do
    resources :posts, only: %i[show create edit update], module: :discussions
  end

  root to: "main#index"
end
