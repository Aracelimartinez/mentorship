# frozen_string_literal: true

class CreateMentees < ActiveRecord::Migration[7.1]
  def change
    create_table :mentees do |t|
      t.string :name
      t.text :bio
      t.string :email

      t.timestamps
    end
  end
end
