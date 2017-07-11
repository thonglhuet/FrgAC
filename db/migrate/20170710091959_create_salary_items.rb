class CreateSalaryItems < ActiveRecord::Migration[5.1]
  def change
    create_table :salary_items do |t|
      t.float :value
      t.boolean :custom
      t.references :salaries, foreign_key: true
      t.references :salary_modules, foreign_key: true

      t.timestamps
    end
  end
end
