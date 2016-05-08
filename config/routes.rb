Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :tasklists, only: [ :index, :show, :update, :create, :destroy ]
      resources :tasks, only: [ :index, :show, :update, :create, :destroy]
      resources :tags, only: [ :index, :show, :update, :create, :destroy ]
    end
  end
end
