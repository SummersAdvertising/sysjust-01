class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :session
      t.string :subject
      t.string :start_time
      t.string :end_time
      t.string :lecturer
      t.string :address
      t.text :content
      t.string :registration_quota
      t.boolean :is_display

      t.timestamps
    end
  end
end
