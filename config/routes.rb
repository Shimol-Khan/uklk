Rails.application.routes.draw do
  devise_for :users
  root 'pages#home'

  devise_scope :user do
    get '/users', to: 'devise/registrations#new'
    get '/users/password', to: 'devise/passwords#new'
  end
  
end
