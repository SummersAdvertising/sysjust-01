class CreateVersionLogs < ActiveRecord::Migration
  def change
    create_table :version_logs do |t|
      t.decimal :version, precision: 5, scale: 2
      t.date :release_date
      t.text :memo

      t.timestamps
    end
  end
end
