class CreateCompletedExercises < ActiveRecord::Migration[6.1]
  def change
    create_table :completed_exercises do |t|
      t.references :session, null: false, foreign_key: true
      t.references :exercise, null: false, foreign_key: true
      t.boolean :completed

      t.timestamps
    end
  end
end
