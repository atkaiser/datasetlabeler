Datasetlabeler::Application.routes.draw do
  root :to => "home#index"
  resources :users, :only => [:index, :show, :edit, :update ]
  resources :projects, :only => [:index, :show, :edit, :update, :destroy, :create]
  get '/auth/:provider/callback' => 'sessions#create'
  get '/signin' => 'sessions#new', :as => :signin
  get '/signout' => 'sessions#destroy', :as => :signout
  get '/auth/failure' => 'sessions#failure'
  get '/projects/new/:id' => 'projects#new', :as => :new_project_id
end
