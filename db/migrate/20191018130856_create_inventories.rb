# frozen_string_literal: true

class CreateInventories < ActiveRecord::Migration[5.2]
  def change
    create_table :inventories do |t|
      t.references :user, foreign_key: true
      t.references :product, foreign_key: true
      t.string :price

      t.timestamps
    end
  end
end
