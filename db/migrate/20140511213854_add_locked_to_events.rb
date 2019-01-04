class AddLockedToEvents < ActiveRecord::Migration[4.2]
  def change
    add_column :events, :locked, :boolean
  end
end
