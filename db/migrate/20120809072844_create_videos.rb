class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :title
      t.text :content
      t.references :category

      t.timestamps
    end
    add_index :videos, :category_id
  end
end
