# frozen_string_literal: true

class InventorySerializer < ActiveModel::Serializer
  attributes :id, :price, :user_id, :product
end
