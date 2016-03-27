class AddBookkeeperNameToMeetings < ActiveRecord::Migration
  def change
    add_column :meetings, :bookkeeper_name, :string
  end
end
