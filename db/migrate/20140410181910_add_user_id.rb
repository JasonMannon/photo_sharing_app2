class AddUserId < ActiveRecord::Migration
  def change
    add_column :photos, :user_id, :int
  end
end
