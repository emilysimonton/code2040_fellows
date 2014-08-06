class FellowController < ApplicationController
  
  def index
  end

  def show
  	@fellow = Fellow.find_by_slug(params[:id])
  end

	private

	def project_params
		params.require(:fellow).permit(:name, :slug)
	end

end
