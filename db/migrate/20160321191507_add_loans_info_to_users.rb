class AddLoansInfoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :loans_info, :string
  end
end
