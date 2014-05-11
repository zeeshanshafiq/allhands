class AddPositiveFeedbackToEvents < ActiveRecord::Migration
  def change
    add_column :events, :positive_feedback, :integer
  end
end
