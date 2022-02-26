class ChangeDefaultValueOfCompletedInCompletedExercises < ActiveRecord::Migration[6.1]
  def change
    change_column :completed_exercises, :completed, :boolean, default: false
  end
end
