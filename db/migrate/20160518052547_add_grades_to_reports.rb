class AddGradesToReports < ActiveRecord::Migration
  def change
    add_column :reports, :grades, :string
  end
end
