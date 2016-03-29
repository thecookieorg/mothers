class AddRequestedByToDocuments < ActiveRecord::Migration
  def change
    add_column :documents, :requested_by, :string
    add_column :documents, :due_date, :string
    add_column :documents, :verified_by_bookkeeper, :boolean, default: false
    add_column :documents, :mail_instead, :boolean, default: false
  end
end
