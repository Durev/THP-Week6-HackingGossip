class GossipsController < ApplicationController
  def index
  end

  def new
  	@gossip = Gossip.new
  end

  def index
  	@gossips = Gossip.all
  end

  def create

	  @gossip = Gossip.new(gossip_params)
	  if @gossip.save
	  	flash[:success] = "New gossip added !"
	  	redirect_to root_path
	  else
	  	render 'gossips#new'
	  end
	end

  private

  	def gossip_params
  		params.require(:gossip).permit(:content, :corsair_id)  #ajouter autre chose dans le permit
  	end

end