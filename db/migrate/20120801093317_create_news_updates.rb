# -*- encoding : utf-8 -*-
class CreateNewsUpdates < ActiveRecord::Migration
  def change
    create_table :news_updates do |t|
      t.string :title
      t.string :source
      t.string :category
      t.text :content

      t.timestamps
    end
  end
end
