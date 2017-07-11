class CreateUserOverTimes < ActiveRecord::Migration[5.1]
  def change
    create_table :user_over_times do |t|
      t.references :over_time, foreign_key: true
      t.references :month_years, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
