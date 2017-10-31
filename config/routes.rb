Rails.application.routes.draw do
  get '/' => 'students#index'

  get '/' => 'experiences#index'

  get '/' => 'educations#index'

  get '/' => 'skills#index'

  get '/' => 'capstones#index'

end
