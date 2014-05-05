class AddCountToQuestion < ActiveRecord::Migration
  def change
    add_column :questions, :count, :integer
  end
end
