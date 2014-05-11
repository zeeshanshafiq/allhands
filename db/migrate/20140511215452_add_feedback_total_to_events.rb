class AddFeedbackTotalToEvents < ActiveRecord::Migration
  def change
    add_column :events, :feedback_total, :integer
  end
end
