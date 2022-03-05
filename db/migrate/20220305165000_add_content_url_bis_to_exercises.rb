class AddContentUrlBisToExercises < ActiveRecord::Migration[6.1]
  def change
    add_column :exercises, :content_url_bis, :string
  end
end
