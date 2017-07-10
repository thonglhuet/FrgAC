class CreateAllowances < ActiveRecord::Migration[5.1]
  def change
    create_table :allowances do |t|
      t.string :title
      t.string :key
      t.string :value
      t.integer :type

      t.timestamps
    end
  end
end
