class RemoveProgressFromSessions < ActiveRecord::Migration[6.1]
  def change
    remove_column :sessions, :progress, :integer
  end
end
