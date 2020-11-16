class CartedProduct < ApplicationRecord
  #join table
  belongs_to :order, optional: true
  belongs_to :user
  belongs_to :product
end
