class AddFeedbackTotalToEvents < ActiveRecord::Migration[4.2]
  def change
    add_column :events, :feedback_total, :integer
  end
end
