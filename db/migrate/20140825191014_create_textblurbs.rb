class CreateTextblurbs < ActiveRecord::Migration
  def change
    create_table :textblurbs do |t|
      t.string :year
      t.text :body

      t.timestamps
    end
  end
end
