class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :employee_code
      t.string :email
      t.string :name
      t.string :avatar
      t.string :sex
      t.string :phone
      t.references :position, foreign_key: true
      t.references :contract, foreign_key: true

      t.timestamps
    end
  end
end
