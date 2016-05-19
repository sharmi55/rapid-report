class AddSchoolnameToReports < ActiveRecord::Migration
  def change
    add_column :reports, :schoolname, :string
    add_column :reports, :schoolclass, :string
  end
end
