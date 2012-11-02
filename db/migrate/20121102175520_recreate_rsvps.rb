class RecreateRsvps < ActiveRecord::Migration
  def change
    drop_table :rsvps
    create_table :rsvps do |t|
      t.integer :user_id
      t.integer :event_id

      t.timestamps
    end
  end
end
