class AddDueDateByToDocuments < ActiveRecord::Migration
  def change
    add_column :documents, :due_date_by, :date
  end
end
