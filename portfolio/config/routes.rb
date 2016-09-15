Rails.application.routes.draw do
  resources :jobs
  resources :profiles
  resources :skills

  # root to: "profiles#show", id: '1'
  root 'profiles#index'
end
