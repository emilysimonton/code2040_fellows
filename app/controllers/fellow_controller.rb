class FellowController < ApplicationController
  
  def index
    @fellows = Fellow.all.sort_by{|fellow| fellow.name}
  end

  def show
  	@fellow = Fellow.find_by_slug(params[:id])
  end

	private

	def fellow_params
		params.require(:fellow).permit(:name, :slug)
	end

end
