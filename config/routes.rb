Rails.application.routes.draw do
  
  root 'pages#home'
  get '/home', to: 'pages#home'
 
  #get '/groups', to: 'groups#index'
  #get '/groups/new', to: 'groups#new', as:'new_group'
  #post '/groups', to: 'groups#create'
  #get '/groups/:id/edit', to: 'groups#edit', as: 'edit_group'
  #patch '/groups/:id', to: 'groups#update'
  #get 'groups/:id', to: 'groups#show', as: 'group'
  #delete '/groups/:id', to: 'groups#destroy'
  
  # this creates all the routes mentioned before:
  resources :groups 
end
  