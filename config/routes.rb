Rails.application.routes.draw do
  resources :blocks
  resources :articles
  resources :schedules
  resources :events
  root to: "events#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
