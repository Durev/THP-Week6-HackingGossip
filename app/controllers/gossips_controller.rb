class GossipsController < ApplicationController
  def index
  end

  def new
  	@gossip = Gossip.new
  end

  def index
  	@gossips = Gossip.all
  end

end
