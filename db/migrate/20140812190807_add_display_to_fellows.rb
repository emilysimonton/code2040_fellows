class AddDisplayToFellows < ActiveRecord::Migration
  def change
    add_column :fellows, :display, :boolean
  end
end
