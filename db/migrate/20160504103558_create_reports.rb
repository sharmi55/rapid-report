class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.string :first_name
      t.string :last_name
      t.text :summary

      t.timestamps null: false
    end
  end
end
