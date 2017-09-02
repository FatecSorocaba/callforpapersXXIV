Rails.application.routes.draw do
  root 'speakers#new'

  resources :invites, only: :new do
    collection do
      post :send_email
    end
  end

  devise_for :admins, controllers: {registrations: 'admins/registrations'}
  namespace 'admins' do
    devise_scope :admin do
      get 'new_admin', to: 'registrations#new_admin'
      post 'create_admin', to: 'registrations#create_admin'
    end
  end

  resources :speakers, param: :uuid, only: [:index, :new, :create, :edit, :update]
end
