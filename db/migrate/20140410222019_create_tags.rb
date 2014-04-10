class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.column :user_id, :int
    end
    add_column :photos, :tag_id, :int
  end
end
