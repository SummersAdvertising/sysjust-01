# -*- encoding : utf-8 -*-
class AddServiceEmailToExperiences < ActiveRecord::Migration
  def change
    add_column :experiences, :service_email, :string
  end
end
