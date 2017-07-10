class CreateUserInformations < ActiveRecord::Migration[5.1]
  def change
    create_table :user_informations do |t|
      t.string :key
      t.string :value
      t.references :user_information_settings, foreign_key: true
      t.references :user, foreign_key: true
      t.references :month_year, foreign_key: true

      t.timestamps
    end
  end
end
