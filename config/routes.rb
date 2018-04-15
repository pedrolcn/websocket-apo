Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'chat_rooms#index', as: :root
  resources :chat_rooms
end
