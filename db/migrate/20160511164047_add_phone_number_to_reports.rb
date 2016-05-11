class AddPhoneNumberToReports < ActiveRecord::Migration
  def change
    add_column :reports, :phone1, :string
    add_column :reports, :relation1, :string
    add_column :reports, :phone2, :string
    add_column :reports, :relation2, :string
  end
end
