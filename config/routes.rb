Rails.application.routes.draw do
 
root to: 'users#new'

 get '/users/new', to: 'users#new'

 get '/users/edit', to: 'users#edit'

get '/users/support-us', to: 'users#support_us'

get '/posts', to:'posts#index'

get '/posts/show', to: 'posts#show'

end
