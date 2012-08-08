class CreateEnrollments < ActiveRecord::Migration
  def change
    create_table :enrollments do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :company
      t.string :professional_title
      t.references :course

      t.timestamps
    end
    add_index :enrollments, :course_id
  end
end
