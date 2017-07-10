class CreateOverTimes < ActiveRecord::Migration[5.1]
  def change
    create_table :over_times do |t|
      t.string :title
      t.float :value

      t.timestamps
    end
  end
end
