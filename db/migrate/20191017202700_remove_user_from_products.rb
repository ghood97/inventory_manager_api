# frozen_string_literal: true

class RemoveUserFromProducts < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :user_id
  end
end
