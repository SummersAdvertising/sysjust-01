class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.string :contact_person
      t.string :phone_number
      t.string :email
      t.integer :attendant_number
      t.string :company_name
      t.string :professional_title

      t.timestamps
    end
  end
end
