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
  	chosen_corsair = Corsair.find_by(username: gossip_params[])
  	@gossip = chosen_corsair.gossips.build(gossip_params)
  	if @gossip.save
  		flash[:success] = "New gossip added !"
  		redirect_to root_path
  	else
  		#flash[:fail] ?
  		render 'gossips#new'
  	end
  end

  private

  	def gossip_params
  		params.require(:gossip).permit(:content)
  	end

end
