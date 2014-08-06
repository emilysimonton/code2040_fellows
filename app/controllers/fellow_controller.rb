class FellowController < ApplicationController
  
  def index
<<<<<<< HEAD
    @fellows = Fellow.all
    @current_students = Fellow.current_students
    @alumnae = Fellow.alumnae
=======
    @current_students = Fellow.current_students.sort_by{|fellow| fellow.name}
    @alumnae = Fellow.alumnae.sort_by{|fellow| fellow.name}
    @current_year = Fellow.current_year
>>>>>>> 1dd4e187ad6f937b357d2d08129ceafec84bc271
  end

  def show
  	@fellow = Fellow.find_by_slug(params[:id])
  end

	private

	def fellow_params
		params.require(:fellow).permit(:name, :slug)
	end

end
