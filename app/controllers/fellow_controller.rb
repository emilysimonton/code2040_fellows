class FellowController < ApplicationController
  
  def index
    @fellows = Fellow.all
    @current_students = Fellow.current_students
    @alumnae = Fellow.alumnae
  end

  def show
  	@fellow = Fellow.find_by_slug(params[:id])
  end

	private

	def fellow_params
		params.require(:fellow).permit(:name, :slug)
	end

end
