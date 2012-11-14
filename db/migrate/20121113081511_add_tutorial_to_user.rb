class AddTutorialToUser < ActiveRecord::Migration
  def change
    add_column :users, :finished_tutorial, :boolean
  end
end
