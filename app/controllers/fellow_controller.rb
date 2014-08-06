class FellowController < ApplicationController
  
  def index
  end

  def show
  	@fellow = Fellow.find(params[:id])
  end

end
