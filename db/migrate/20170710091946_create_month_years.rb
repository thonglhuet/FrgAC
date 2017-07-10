class CreateMonthYears < ActiveRecord::Migration[5.1]
  def change
    create_table :month_years do |t|
      t.string :value
      t.integer :maxWorkingDay

      t.timestamps
    end
  end
end
