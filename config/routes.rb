Rails.application.routes.draw do
  root 'homepage#index'
  get '/iphone' => 'devices#showiphone'
  get ':id/bookappt' => 'appointments#index'
  get ':id/getquote' => 'quotes#index'
  post '/appointments' => 'appointments#create'
  get '/appointments/:id' => 'appointments#show'
  post '/quotes' => 'quotes#create'
  get '/quotes/:id' => 'quotes#show'
  get '/admins' => 'admins#index'
  post '/sessions' => 'sessions#create'
  get '/admins/:id' => 'admins#show'
end
