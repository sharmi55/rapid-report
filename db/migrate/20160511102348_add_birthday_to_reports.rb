class AddBirthdayToReports < ActiveRecord::Migration
  def change
    add_column :reports, :birthday, :datetime
  end
end
