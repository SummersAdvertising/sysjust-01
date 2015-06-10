class AddVersionLogsColumn < ActiveRecord::Migration
  def change
    add_column :version_logs, :appid, :string, :default => "DAQ"
  end
end
