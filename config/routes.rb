Rails.application.routes.draw do

  root 'tweets#index'

  resources :tweets do 
  	resources :comments
  end
  resources :users

  get '/user/:user_id/tweets' => 'tweets#personal_tweets'


  get "/signup" => 'users#new'
  get "/login" => 'sessions#new'
  post '/sessions' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
             


end
