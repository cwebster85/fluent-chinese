class CreateExercises < ActiveRecord::Migration[6.1]
  def change
    create_table :exercises do |t|
      t.references :challenge, null: false, foreign_key: true
      t.string :name
      t.text :description
      t.string :content_url
      t.string :content_type

      t.timestamps
    end
  end
end
