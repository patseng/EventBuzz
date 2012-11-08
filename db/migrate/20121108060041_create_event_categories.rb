class CreateEventCategories < ActiveRecord::Migration
  def change
    create_table :event_categories do |t|
      t.string :event_id
      t.string :category_id

      t.timestamps
    end
  end
end
