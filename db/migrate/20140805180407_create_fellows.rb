class CreateFellows < ActiveRecord::Migration
  def change
    create_table :fellows do |t|
      t.integer :year
      t.string :name
      t.string :title
      t.string :company_name
      t.text :bio
      t.string :twitter_handle
      t.string :github_url
      t.string :linkedin_url
      t.string :profile_pic
      t.string :company_logo

      t.timestamps
    end
  end
end
