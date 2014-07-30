Rails.application.routes.draw do
  get '/movies' => 'movies#index'
  get '/' =>  'movies#index'
  get '/movies/:id' => 'movies#show'
  get '/:id' => 'movies#show'
  get '/cast_member/:id' => 'movies#cast_member'

end
