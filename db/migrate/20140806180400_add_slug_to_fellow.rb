class AddSlugToFellow < ActiveRecord::Migration
  def change
    add_column :fellows, :slug, :string
  end
end
