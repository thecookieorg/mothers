class AddForProfitToUsers < ActiveRecord::Migration
  def change
    add_column :users, :for_profit, :boolean, default: true
  end
end
