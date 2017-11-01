Rails.application.routes.draw do
  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  get '/users/:id/edit' => 'users#edit'
  patch '/users/:id' => 'users#update'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/students' => 'students#index'
  get '/students/:id' => 'students#show'
  get '/students/:id/edit' => 'students#edit'
  patch '/students/:id' => 'students#update'

  get '/capstones' => 'capstones#index'
  get '/capstones/:id' => 'capstones#show'
  get '/capstones/:id/edit' => 'capstones#edit'
  patch '/capstones/:id' => 'capstones#update'

  get '/experiences' => 'experiences#index'
  get '/experiences/:id' => 'experiences#show'
  get '/experiences/:id/edit' => 'experiences#edit'
  patch '/experiences/:id' => 'experiences#update'

  get '/educations' => 'educations#index'
  get '/educations/:id' => 'educations#show'
  get '/educations/:id/edit' => 'educations#edit'
  patch '/educations/:id' => 'educations#update'

  get '/skills' => 'skills#index'
  get '/skills/:id' => 'skills#show'
  get '/skills/:id/edit' => 'skills#edit'
  patch '/skills/:id' => 'skills#update'
end
