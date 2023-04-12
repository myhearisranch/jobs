class CreateAttendances < ActiveRecord::Migration[5.2]
  def change
    create_table :attendances do |t|

      t.datetime :clock_in_at
      t.datetime :clock_out_at
      t.references :user, null: false, foreign_key: true
      t.integer :user_id

      t.timestamps
    end
  end
end
