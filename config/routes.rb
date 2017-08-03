Rails.application.routes.draw do
 

 get '/users/new', to: 'users#new'

 get '/users/edit', to: 'users#edit'

end
