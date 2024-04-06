class CreateSchedules < ActiveRecord::Migration[7.1]
  def change
    create_table :schedules do |t|
      t.references :mentor, null: false, foreign_key: true
      t.references :mentee, null: false, foreign_key: true
      t.datetime :date
      t.string :description
      t.boolean :accepted, null: true, default: false

      t.timestamps
    end
  end
end
