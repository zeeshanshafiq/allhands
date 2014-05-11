class AddDefaultValueToEventAttributes < ActiveRecord::Migration
  def up
    change_column :events, :positive_feedback, :integer, :default => 0
    change_column :events, :feedback_total, :integer, :default => 0
  end

  def down
    change_column :events, :positive_feedback, :integer, :default => nil
    change_column :events, :feedback_total, :integer, :default => nil
  end

end
