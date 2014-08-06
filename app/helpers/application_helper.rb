module ApplicationHelper

	def social_media_helper
		html = ""
		if @fellow.linkedin_url
			html << render('shared/linkedin')
		end
		if @fellow.github_url
			html << render('shared/github')
		end
		if @fellow.twitter_handle
			html << render('shared/twitter')
		end
		html.html_safe
	end

end
