Taskme::Application.routes.draw do
  root :to => "home#index"
  resources :users, :only => [:index, :show, :edit, :update ]
    # resources :tasks, :except => [:destroy] do
    #   resources :proposals, :except => [:destroy]
    # end
  # end

  resources :tasks, :except => [:destroy] do
    resources :proposals, :except => [:destroy]
  end

  get '/auth/:provider/callback' => 'sessions#create'
  get '/signin' => 'sessions#new', :as => :signin
  get '/signout' => 'sessions#destroy', :as => :signout
  get '/auth/failure' => 'sessions#failure'
  get 'dashboard', to: 'dashboard#index'

  resources :reviews, :except => [:destroy]

end
