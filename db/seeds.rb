

    csv_file_path = 'db/code2040_2014_bios_sheet1.csv'

    CSV.foreach(csv_file_path) do |row|
      Fellow.create!({
        :name => row[0],
        :title => row[1],
        :company_name => row[2],
        :bio => row[3],
        :twitter_handle => row[4]       
      })
    end
    Fellow.first.destroy
    puts "Added row, expect 24 fellows"

source_path = Rails.root.join('db', 'fellow_2013_images')

Dir.glob("#{source_path}/*").each do |image_file_name|
	base_name=File.basename(image_file_name, File.extname(image_file_name))
	#this allows us to use an image with any extension
	Fellow.where('name ILIKE ?', "#{base_name}%").update_all(profile_pic: File.basename(image_file_name))
	# tbinding.pry
	# Fellow.find_by(name: "Estefania Ortiz").update_attributes(profile_pic: "Estefania.jpg")
end
