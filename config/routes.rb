Rails.application.routes.draw do
 
root to: 'users#new'

 get '/users/new', to: 'users#new'

 get '/users/edit', to: 'users#edit'

end
