# frozen_string_literal: true

class CreateObjectives < ActiveRecord::Migration[5.2]
  def change
    create_table :objectives do |t|
      t.string :title, null: false, index: true

      t.timestamps
    end
  end
end
