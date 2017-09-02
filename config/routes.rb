Rails.application.routes.draw do
  root 'speakers#new'

  resources :speakers, param: :uuid, only: [:new, :create, :edit, :update]
  resources :invites, only: :new do
    collection do
      post :send_email
    end
  end
end
