# -*- encoding : utf-8 -*-
class AddImageToVideos < ActiveRecord::Migration
  def change
    add_column :videos, :image, :string
  end
end
