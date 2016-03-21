class AddBankAccountsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :banks_info, :string
    add_column :users, :credit_cards_info, :string
    add_column :users, :bank_accounts_info, :string
    add_column :users, :leases_info, :string
  end
end
