class FixColumnName < ActiveRecord::Migration
  def self.up
  	rename_column :textblurbs, :year, :year_string
  end
end
