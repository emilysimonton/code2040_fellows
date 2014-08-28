class AddSuperDuperToAdminUsers < ActiveRecord::Migration
  def change
    add_column :admin_users, :super_duper, :boolean
  end
end
