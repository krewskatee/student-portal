Rails.application.routes.draw do

  get '/students/:id' => 'students#show'
  get '/students/:id/edit' => 'students#edit'
  patch '/students/:id' => 'students#update'

  get '/capstones/:id' => 'capstones#show'
  get '/capstones/:id/edit' => 'capstones#edit'
  patch '/capstones/:id' => 'capstones#update'

  get '/experiences/:id' => 'experiences#show'
  get '/experiences/:id/edit' => 'experiences#edit'
  patch '/experiences/:id' => 'experiences#update'

  get '/education/:id' => 'education#show'
  get '/education/:id/edit' => 'education#edit'
  patch '/education/:id' => 'education#update'

  get '/skills/:id' => 'skills#show'
  get '/skills/:id/edit' => 'skills#edit'
  patch '/skills/:id' => 'skills#update'

end
