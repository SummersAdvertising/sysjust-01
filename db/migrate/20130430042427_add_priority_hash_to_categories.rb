class AddPriorityHashToCategories < ActiveRecord::Migration
  def change
  	add_column :categories, :priority, :integer
  	add_column :categories, :namehash, :string
  end
end
