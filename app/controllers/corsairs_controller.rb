class CorsairsController < ApplicationController

  def index
  	@corsair = Corsair.new
  	@corsairs = Corsair.all
  end

  def create
  	@corsair = Corsair.new(corsair_params)
  	if @corsair.save
  		redirect_to corsairs_path
  	else
  		render 'corsairs#index'
  	end
  end

  private

	  def corsair_params
	  	params.require(:corsair).permit(:username)
	  end

end