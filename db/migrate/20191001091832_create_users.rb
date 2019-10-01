class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.date :graduation_date
      t.timestamps
    end
  end
end
