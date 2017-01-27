Rails.application.routes.draw do
  root 'appointments#index'
  post '/appointments' => 'appointments#create'
  get '/appointments/:id' => 'appointments#show'
end
