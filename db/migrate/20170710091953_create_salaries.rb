class CreateSalaries < ActiveRecord::Migration[5.1]
  def change
    create_table :salaries do |t|
      t.references :month_year, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
