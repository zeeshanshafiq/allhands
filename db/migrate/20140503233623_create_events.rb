class CreateEvents < ActiveRecord::Migration[4.2]
  def change
    create_table :events do |t|
      t.text :description
      t.date :date
      t.text :summary

      t.timestamps
    end
  end
end
