class AddProgressToSessions < ActiveRecord::Migration[6.1]
  def change
    add_column :sessions, :progress, :integer
  end
end
