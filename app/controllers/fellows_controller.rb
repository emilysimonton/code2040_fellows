class FellowsController < ApplicationController
  
  def index
    @current_students = Fellow.current_students.sort_by{|fellow| fellow.name}
    @alumnae = Fellow.alumnae.sort_by{|fellow| fellow.name}
    @current_year = Fellow.current_year
    @years = Fellow.all_years
    # @years is a range from the first class year to the most recent
  end

  def show
  	@fellow = Fellow.find_by_slug(params[:id])
  end

  def new
    @fellow = Fellow.new
  end

  # def create
  #   @fellow = Fellow.new(fellow_params)
  #   unless @fellow.approved?
  #     :

	private

	def fellow_params
		params.require(:fellow).permit(:name, :slug, :bio, :company_name, :company_logo, :title, :twitter_handle, :github_url, :linkdin_url, :profile_pic)
	end

end