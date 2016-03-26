class AddPublicToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :public, :boolean, default: true
  end
end
