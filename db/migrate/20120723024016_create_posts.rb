# -*- encoding : utf-8 -*-
class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :content

      t.timestamps
    end
  end
end
