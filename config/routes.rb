Rails.application.routes.draw do
  root 'appointments#index'
  post '/appointments' => 'appointments#create'
  get '/appointments/:id' => 'appointments#show'
  get '/admins' => 'admins#index'
  post '/sessions' => 'sessions#create'
  get '/admins/:id' => 'admins#show'
end
