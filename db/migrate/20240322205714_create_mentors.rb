# frozen_string_literal: true

class CreateMentors < ActiveRecord::Migration[7.1]
  def change
    create_table :mentors do |t|
      t.string :name
      t.string :email
      t.string :url

      t.text :bio

      t.timestamps
    end
  end
end
