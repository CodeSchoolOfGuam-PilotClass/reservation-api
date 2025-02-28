Rails.application.routes.draw do
  get '/restaurants' => 'restaurants#index'
  get '/restaurants/:id' => 'restaurants#show'
  post '/restaurants' => 'restaurants#create'
  patch '/restaurants/:id' => 'restaurants#update'
  delete '/restaurants/:id' => 'restaurants#destroy'
  
  get '/reservations' => 'reservations#index'
  get '/reservations/:id' => 'reservations#show'
  post '/reservations' => 'reservations#create'
  patch '/reservations/:id' => 'reservations#update'
  delete '/reservations/:id' => 'reservations#destroy'
end
