class PaddlersController < ApplicationController

  def get_paddlers
    @paddlers = Paddler.all
    render json: @paddlers
  end

  def get_paddler
    @paddler = Paddler.find(params[:id])
    render json: @paddler
  end

end
