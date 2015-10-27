Rails.application.routes.draw do
  devise_for :users
  resources :workouts
  resources :excercises
  
  devise_scope :user do
      get '/users/sign_out' => 'devise/sessions#destroy'
    end

  root 'workouts#index'
end
