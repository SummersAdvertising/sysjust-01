# -*- encoding : utf-8 -*-
class CreateServiceEmails < ActiveRecord::Migration
  def change
    create_table :service_emails do |t|
      t.string :email

      t.timestamps
    end
  end
end
