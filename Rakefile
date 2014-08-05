# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require "CSV"
require File.expand_path('../config/application', __FILE__)

Rails.application.load_tasks



  desc "Import CSV Data"
  task :import_stuff => :environment do

    csv_file_path = 'db/code2040_2014_bios_sheet1.csv'

    CSV.foreach(csv_file_path) do |row|
      Fellow.create!({
        :name => row[0],
        :title => row[1],
        :company_name => row[2],
        :bio => row[3],
        :twitter_handle => row[4]        
      })
      puts "Row added!"
    end
  end

