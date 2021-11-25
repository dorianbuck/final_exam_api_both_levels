Rails.application.routes.draw do
  namespace :api do
    get 'comments/posts'
  end
  mount_devise_token_auth_for 'User', at: 'auth/api'
  namespace :api do
    resources :articles, only: [:index, :show]
  end
end
