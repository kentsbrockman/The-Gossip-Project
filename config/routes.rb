Rails.application.routes.draw do

    root 'gossip_project#home'

    get '/home', to: 'gossip_project#home'

    #Hidden welcome
    get '/welcome/:name', to: 'gossip_project#welcome'

    #Nav links
    get '/team', to: 'gossip_project#team'
    get '/contact', to: 'gossip_project#contact'
    get '/privacy', to: 'gossip_project#privacy'
    get '/terms', to: 'gossip_project#terms'


  #Gossips
    resources :gossips do
      resources :comments
      resources :likes
    end

  #Users
    resources :users

  #Cities
    resources :cities, only: [:show]

  #Sessions
    resources :sessions, only: [:new, :create, :destroy]


end


#Cheat sheet --> resources :gossips

  #get '/gossips', to: 'gossips#index'
  #get '/gossips/:id', to: 'gossips#show'
  #get '/gossips/new', to: 'gossips#new'
  #post '/gossips', to: 'gossips#create'  # reçoit de l'info d'un formulaire donc verbe POST
  #get '/gossips/:id/edit', to: 'gossips#edit'
  #put '/gossips/:id', to: 'gossips#update' # reçoit de l'info d'un formulaire donc verbe PUT
  #delete '/gossips/:id', to: 'gossips#destroy' # une requête un peu spéciale pour supprimer donc verbe DELETE
