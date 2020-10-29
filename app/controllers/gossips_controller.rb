class GossipsController < ApplicationController

  def show
    @gossip = Gossip.find(params[:id])
  end
    
  def new
    @gossip = Gossip.new
  end

  def create
    @gossip = Gossip.new(title: params[:title], content: params[:content], user: User.all.sample)
    if @gossip.save
      flash[:notice] = "Your awesome gossip has been saved!"
      redirect_to gossip_project_home_path 
    else
      flash[:alert] = "Oh no! We cannot create your gossip for the following reason(s):"
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
      flash.now[:alert] = "Oh no! We cannot update your gossip for the following reason(s):"
      render :edit
    end
  end

  def destroy
    @gossip = Gossip.find(params[:id])
    @gossip.destroy
    flash[:alert] = "Your gossip has been deleted"
    redirect_to gossip_project_home_path
  end

  private
  def post_params
    post_params = params.require(:gossip).permit(:title, :content)
  end

end