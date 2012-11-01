class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
    	t.string :event_title
    	t.datetime :end_datetime
    	t.text :description
    	t.string :location
    	t.datetime :start_datetime
      t.timestamps
    end
  end
end
