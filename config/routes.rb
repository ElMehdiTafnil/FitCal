Rails.application.routes.draw do
  get 'muscle_groups/index'
  get 'muscle_groups/show'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  resources :users, only: [:edit, :update] do
    member do
      get 'results', to: 'users#results'
    end

    resources :subscriptions
    resources :objectives
    resources :reminders
    resources :user_activities
    resources :meal_plans
  end

  resources :meals
  resources :activities

  resources :muscle_groups, only: [:index, :show]

  get "results" => "users#results", as: :results
end
