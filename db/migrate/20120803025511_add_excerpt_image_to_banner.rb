# -*- encoding : utf-8 -*-
class AddExcerptImageToBanner < ActiveRecord::Migration
  def self.up
    add_column :banners, :excerpt_image_01_file_name,    :string
    add_column :banners, :excerpt_image_01_content_type, :string
    add_column :banners, :excerpt_image_01_file_size,    :integer
    add_column :banners, :excerpt_image_01_updated_at,   :datetime
    add_column :banners, :excerpt_image_02_file_name,    :string
    add_column :banners, :excerpt_image_02_content_type, :string
    add_column :banners, :excerpt_image_02_file_size,    :integer
    add_column :banners, :excerpt_image_02_updated_at,   :datetime
    add_column :banners, :excerpt_image_03_file_name,    :string
    add_column :banners, :excerpt_image_03_content_type, :string
    add_column :banners, :excerpt_image_03_file_size,    :integer
    add_column :banners, :excerpt_image_03_updated_at,   :datetime
  end

  def self.down
    remove_column :banners, :excerpt_image_01_file_name,    :string
    remove_column :banners, :excerpt_image_01_content_type, :string
    remove_column :banners, :excerpt_image_01_file_size,    :integer
    remove_column :banners, :excerpt_image_01_updated_at,   :datetime
    remove_column :banners, :excerpt_image_02_file_name,    :string
    remove_column :banners, :excerpt_image_02_content_type, :string
    remove_column :banners, :excerpt_image_02_file_size,    :integer
    remove_column :banners, :excerpt_image_02_updated_at,   :datetime
    remove_column :banners, :excerpt_image_03_file_name,    :string
    remove_column :banners, :excerpt_image_03_content_type, :string
    remove_column :banners, :excerpt_image_03_file_size,    :integer
    remove_column :banners, :excerpt_image_03_updated_at,   :datetime
  end
end
