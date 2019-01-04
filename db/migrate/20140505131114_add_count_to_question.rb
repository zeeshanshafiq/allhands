class AddCountToQuestion < ActiveRecord::Migration[4.2]
  def change
    add_column :questions, :count, :integer
  end
end
