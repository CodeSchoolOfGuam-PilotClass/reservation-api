Rails.application.routes.draw do
  get '/restaurants' => 'restaurants#index'
  get '/restaurants/:id' => 'restaurants#show'
  
  get '/reservations' => 'reservations#index'
  get '/reservations/:id' => 'reservations#show'
  post '/reservations' => 'reservations#create'
  patch '/reservations/:id' => 'reservations#update'
end
