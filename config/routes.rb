Rails.application.routes.draw do
  root to: 'chat_rooms#index'
  resources :chat_rooms
end
