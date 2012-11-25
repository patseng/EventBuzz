class CreateTimingTests < ActiveRecord::Migration
  def change
    create_table :timing_tests do |t|
      t.integer :user_id
      t.datetime :find_timestamp
      t.datetime :detail_timestamp

      t.timestamps
    end
  end
end
