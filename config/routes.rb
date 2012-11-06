EventBuzz::Application.routes.draw do
  root :to => 'main#index'

  resource :rsvps, :only => [:create, :destroy]
  # admin
  match "admin/users", to: 'admin#users'
  resource :events, :only => [:new, :create]
  
  # authentication
  match 'auth/:provider/callback', to: 'sessions#create'
  match 'auth/failure', to: redirect('/')
  match 'signout', to: 'sessions#destroy', as: 'signout'
  match 'event_detail', to: 'main#get_event_detail'

end
