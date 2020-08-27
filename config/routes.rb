Rails.application.routes.draw do
  namespace :api do
    resources :apartments, only: [:index, :create, :destroy, :update]

  end
end