class AddHeadlineToEvents < ActiveRecord::Migration[4.2]
  def change
    add_column :events, :headline, :string
  end
end
