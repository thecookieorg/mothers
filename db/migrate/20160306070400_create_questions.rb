class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :question_1
      t.string :question_2
      t.string :question_3

      t.timestamps null: false
    end
  end
end
