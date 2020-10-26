Rails.application.routes.draw do
  get '/gossip_project/home', to: 'gossip_project#home'
  get '/gossip_project/team', to: 'gossip_project#team'
  get '/gossip_project/contact', to: 'gossip_project#contact'
  get '/gossip_project/gossip/:id', to: 'gossip_project#gossip', as: 'gossip'
  get '/gossip_project/user/:id', to: 'gossip_project/#user', as: 'user'
end


