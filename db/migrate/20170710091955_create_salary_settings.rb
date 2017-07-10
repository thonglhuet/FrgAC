class CreateSalarySettings < ActiveRecord::Migration[5.1]
  def change
    create_table :salary_settings do |t|
      t.string :title
      t.references :month_year, foreign_key: true
      t.references :contract, foreign_key: true

      t.timestamps
    end
  end
end
