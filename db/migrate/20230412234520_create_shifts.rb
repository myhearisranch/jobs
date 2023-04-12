class CreateShifts < ActiveRecord::Migration[5.2]
  def change
    create_table :shifts do |t|
      t.datetime :start_time, null: false
      t.datetime :end_time, null: false
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
