class GossipProjectController < ApplicationController
  def home
    @gossips = Gossip.all
  end

  def contact
  end

  def team
  end

  def welcome
  end

end
