Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: "users/registrations"}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'chat_rooms#index', as: :root
  resources :chat_rooms
  resources :messages
end
