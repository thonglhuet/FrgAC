class CreateUserInformationSettings < ActiveRecord::Migration[5.1]
  def change
    create_table :user_information_settings do |t|
      t.string :title

      t.timestamps
    end
  end
end
