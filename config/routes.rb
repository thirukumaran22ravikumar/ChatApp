Rails.application.routes.draw do
  mount ActionCable.server => '/cable'
  devise_for :users
  resources :homes
  resources :chat_rooms, only:[:index, :show] do
    resources :messages, only: [:create,:show]

  end

  resources :group_rooms, only:[:show] do
    

  end
  # resources :group_chat_massages, only: [:create]
  resources :group_chat_messages, only: [:create]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", as: :rails_health_check
  root to: "chat_rooms#index"
  # Defines the root path route ("/")
  # root "posts#index"
end
