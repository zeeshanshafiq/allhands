class AddPositiveFeedbackToEvents < ActiveRecord::Migration[4.2]
  def change
    add_column :events, :positive_feedback, :integer
  end
end
