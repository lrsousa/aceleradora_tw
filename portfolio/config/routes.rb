Rails.application.routes.draw do
  resources :profiles
  resources :skills

  # root to: "profiles#show", id: '1'
  root 'profiles#index'
end
