class CreateBanners < ActiveRecord::Migration
  def change
    create_table :banners do |t|
      t.string :category
      t.string :title_01
      t.text :content_01
      t.string :hyperlink_01
      t.string :title_02
      t.text :content_02
      t.string :hyperlink_02
      t.string :title_03
      t.text :content_03
      t.string :hyperlink_03

      t.timestamps
    end
  end
end
