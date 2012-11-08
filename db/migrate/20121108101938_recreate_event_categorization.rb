class RecreateEventCategorization < ActiveRecord::Migration
  def up
    drop_table :event_categories
    create_table :event_categories do |t|
      t.integer :event_id
      t.integer :category_id

      t.timestamps
    end

  end

  def down
    drop_table :event_categories
  end
end