Rails.application.routes.draw do
  resources :incidents do
    resources :messages
  end
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  devise_scope :user do
    authenticated :user do
      root 'incidents#index'
    end
    unauthenticated do
      root 'users/registrations#new'
    end
  end
end
