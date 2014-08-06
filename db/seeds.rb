require 'csv'

# Import CSV information about each fellow into database. 
csv_file_path = 'db/code2040_2014_bios_sheet1.csv'

CSV.foreach(csv_file_path) do |row|
  Fellow.create!({
    :name => row[0],
    :title => row[1],
    :company_name => row[2],
    :bio => row[3],
    :twitter_handle => row[4],
    :year => row[5]     
  })
end

# Gets rid of column headers.
Fellow.first.destroy
puts "Added row, expect 24 fellows"

# Adds images for each fellow to the database. Matches images to fellow in database.
source_path = Rails.root.join('db', 'fellow_2014_images')

Dir.glob("#{source_path}/*").each do |image_file_name|
	base_name=File.basename(image_file_name, File.extname(image_file_name))
	#this allows us to use an image with any extension
	Fellow.where('name ILIKE ?', "#{base_name}%").update_all(profile_pic: File.basename(image_file_name))
end

# Create a slug for each fellow
Fellow.all.each do |fello|
  fello.slug = fello.name.downcase.gsub(".", "").gsub(" ", "-")
  fello.save
end
