class AddProfPicToUser < ActiveRecord::Migration
  def change
    add_column :users, :prof_pic_link, :string
  end
end
