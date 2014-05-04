Taskme::Application.routes.draw do
  root :to => "home#index"
  resources :users, :only => [:index, :show, :edit, :update ] do
    resources :tasks do
      resources :proposals 
    end
  end


  get '/auth/:provider/callback' => 'sessions#create'
  get '/signin' => 'sessions#new', :as => :signin
  get '/signout' => 'sessions#destroy', :as => :signout
  get '/auth/failure' => 'sessions#failure'
  get 'dashboard', to: 'dashboard#index'

  resources :reviews, :except => [:destroy]
  get 'tasks', to: 'home#tasks'

  get 'accepted', to: 'proposals#accepted' 
  get 'declined', to: 'proposals#declined' 

end
