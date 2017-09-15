Rails.application.routes.draw do

devise_for :admins

root to: 'users#new'

 get '/users/new', to: 'users#new'

 get '/users/edit', to: 'users#edit'

get '/users/support-us', to: 'users#support_us'

get '/posts', to:'posts#index'

# get '/posts/:id', to: 'posts#show'

get '/posts/new', to: 'posts#new'

post '/posts', to: 'posts#create'

get '/applicants/error', to: 'applicants#error'


namespace :admin do
  resources :bootcamps

end

  resources :applicants, only: [:index, :new, :create]
end
