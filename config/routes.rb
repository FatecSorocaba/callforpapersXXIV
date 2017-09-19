Rails.application.routes.draw do
  root 'speakers#new'

  resources :invites, only: :new do
    collection do
      post :send_email
    end
  end

  devise_for :admins, controllers: {registrations: 'admins/registrations'}

  resources :speakers, param: :uuid, only: [:index, :create, :edit, :update]
end
