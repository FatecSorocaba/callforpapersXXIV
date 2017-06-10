Rails.application.routes.draw do
  root 'speakers#new'

  resources :speakers, param: :uuid, only: [:new, :create, :edit, :update]
end
