class GossipsController < ApplicationController

  def index
    @gossips = Gossip.all
  end
    
  def new
    @gossip = Gossip.new
  end

  def create
    @gossip = Gossip.new('title' => params[:title], 'content' => params[:content], user_id: 1)
    if @gossip.save
      flash[:notice] = "Your awesome gossip has been saved!"
      redirect_to root_path 
    else
      flash[:alert] = "Oh no :( We cannot create your gossip for the following reason(s):"
      render :new
    end
  end

  def edit
    @gossip = Gossip.find(params[:id])
  end

  def update
    @gossip = Gossip.find(params[:id])
    if @gossip.update(post_params)
      flash[:notice] = "Your awesome gossip has been updated!"
      redirect_to gossip_path(@gossip.id)
    else
      flash.now[:alert] = "Oh no :( We cannot update your gossip for the following reason(s):"
      render :edit
    end
  end

  def show
    @gossip = Gossip.find(params[:id])
  end

  def destroy
    @gossip = Gossip.find(params[:id])
    if @gossip.destroy
      flash[:notice] = "Your gossip has been deleted!"
      redirect_to root_path 
    else 
      render :destroy
    end
  end

end
