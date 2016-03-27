class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      t.string :calendly_meeting_url

      t.timestamps null: false
    end
  end
end
