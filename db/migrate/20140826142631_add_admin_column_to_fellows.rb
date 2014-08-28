class AddAdminColumnToFellows < ActiveRecord::Migration
  def change
      add_column :fellows, :admin, :boolean
  end
end

