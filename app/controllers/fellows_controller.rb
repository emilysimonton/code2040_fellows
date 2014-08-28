class FellowsController < ApplicationController
  
  def index
    @current_students = Fellow.current_students.sort_by{|fellow| fellow.name}
    @alumnae = Fellow.alumnae.sort_by{|fellow| fellow.name}
    @current_year = Fellow.current_year
    @years = Fellow.past_years
    # @years is a range from the first class year to the most recent graduated class
  end

  def show
  	@fellow = Fellow.find_by_slug(params[:id])
  end

  def new
    @fellow = Fellow.new
    @current_year = Fellow.current_year
  end

  def create
    @fellow = Fellow.new(fellow_params)
    @fellow.display = false
    @fellow.year = Time.now.year
    @fellow.save
    redirect_to "/"
  end

  def approve
    @fellows = Fellow.not_approved.sort_by{|fellow| fellow.name}
  end

	private

	def fellow_params
		params.require(:fellow).permit(:name, :email, :slug, :bio, :company_name, :company_logo, :title, :twitter_handle, :github_url, :linkdin_url, :profile_pic)
	end

end
