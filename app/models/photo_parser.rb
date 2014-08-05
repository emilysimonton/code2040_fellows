# require 'pry'
class PhotoParser
	attr_accessor :files

	def initialize(path)
		# @files = [] 
		@files = Dir.entries(path)
		# File.open(path, "r"){|song_name| @files << song_name.to_s}	
		@files.slice!(0..1)
	end	


	def parse_filename(song_string)		
		
	end


end
