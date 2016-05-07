Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :tasklists, only: [ :index, :show, :update, :create ]
      # resources :tasks, only: [ :index, :show, :update, :create]
      # resources :tags, only: [ :index, :show, :update, :create ]
    end
  end
end