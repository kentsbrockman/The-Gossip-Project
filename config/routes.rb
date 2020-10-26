Rails.application.routes.draw do
  get '/gossip_project/home', to: 'gossip_project#home'
  get '/gossip_project/team', to: 'gossip_project#team'
  get '/gossip_project/contact', to: 'gossip_project#contact'
end
