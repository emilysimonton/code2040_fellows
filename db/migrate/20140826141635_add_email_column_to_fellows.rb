class AddEmailColumnToFellows < ActiveRecord::Migration
  def change
      add_column :fellows, :email, :string
  end
end
