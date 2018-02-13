class GossipsController < ApplicationController

  def new
  	@gossip = Gossip.new
  end

  def create
  	@gossip = current_moussaillon.gossips.create(gossip_params)
  	@gossip.save
  	redirect_to gossips_path
  end

  def index
  	@gossips = Gossip.all
  end

  def destroy
  	@gossip = Gossip.find(params[:id])
  	@gossip.delete
  	redirect_to gossips_path
  end

  private

  	def gossip_params
   		params.require(:gossip).permit(:content)
  	end  
end
