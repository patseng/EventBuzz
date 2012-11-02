class TrulyRecreateRsvps < ActiveRecord::Migration
  def up
    drop_table :rsvps
    create_table :rsvps do |t|
      t.integer :user_id
      t.integer :event_id

      t.timestamps
    end
  end

  def down
    drop_table :rsvps
  end
end
