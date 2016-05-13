class AddAddressToReports < ActiveRecord::Migration
  def change
    add_column :reports, :line1, :string
    add_column :reports, :line2, :string
    add_column :reports, :province, :string
  end
end
