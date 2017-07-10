class CreateUserAllowances < ActiveRecord::Migration[5.1]
  def change
    create_table :user_allowances do |t|
      t.references :user, foreign_key: true
      t.references :allowance, foreign_key: true
      t.references :month_years, foreign_key: true

      t.timestamps
    end
  end
end
