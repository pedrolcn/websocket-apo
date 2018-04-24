Rails.application.routes.draw do

  # User Auth
  devise_for :users, controllers: {registrations: "users/registrations"}

  root 'chat_rooms#index', as: :root
  
  resources :chat_rooms
  resources :messages

  mount ActionCable.server => "/cable"
end
