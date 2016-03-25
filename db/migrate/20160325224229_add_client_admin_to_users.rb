class AddClientAdminToUsers < ActiveRecord::Migration
  def change
    add_column :users, :client_admin, :boolean, default: true
  end
end
