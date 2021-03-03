Rails.application.routes.draw do
  namespace :api do
    scope :v1 do
      mount_devise_token_auth_for 'User', at: 'auth', controllers: {
        registrations: 'api/v1/auth/registrations'
      }
    end
  end

  # resource :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
