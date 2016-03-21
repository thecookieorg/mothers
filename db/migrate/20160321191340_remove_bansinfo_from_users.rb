class RemoveBansinfoFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :banks_info
  end
end
