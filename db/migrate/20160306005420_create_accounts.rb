class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :first_name
      t.string :last_name
      t.string :company_name
      t.string :phone_number
      t.string :address
      t.string :card_number
      t.string :name_on_card
      t.string :expiry
      t.string :cvc
      t.string :billing_posta_code

      t.timestamps null: false
    end
  end
end
