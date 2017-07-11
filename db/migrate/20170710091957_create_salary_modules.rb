class CreateSalaryModules < ActiveRecord::Migration[5.1]
  def change
    create_table :salary_modules do |t|
      t.string :title
      t.string :excel_formular
      t.string :key
      t.string :type
      t.string :value
      t.integer :parent_id

      t.timestamps
    end
  end
end
