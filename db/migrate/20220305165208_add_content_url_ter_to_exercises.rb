class AddContentUrlTerToExercises < ActiveRecord::Migration[6.1]
  def change
    add_column :exercises, :content_url_ter, :string
  end
end
