class ChangeCoursesStarttimeEndtimeToTimestamp < ActiveRecord::Migration
  def up
  	change_column :courses, :start_time, :timestamp
  	change_column :courses, :end_time, :timestamp
  end

  def down
  	change_column :courses, :start_time, :string
  	change_column :courses, :end_time, :string
  end
end
