class PaddlersController < ApplicationController

  def get_paddlers
    @paddlers = Paddler.all
    respond_to do |format|
      format.html
      format.json
    end
  end

  def get_paddler
    @paddler = Paddler.find(params[:id])
    render json: @paddler
  end

  def roster_ready
    render :layout => false

  end


end
