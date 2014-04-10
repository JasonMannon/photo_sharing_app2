class AddPhotoId < ActiveRecord::Migration
  def change
    add_column :users, :photo_id, :int
  end
end
