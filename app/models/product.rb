class Product < ApplicationRecord
  # validates :title, presence: true, uniqueness: true
  # validates :price, presence: true, numericality: { greater_than: 0 }
  # validates :description, presence: true, length: { in: 10..500 }

  belongs_to :supplier
  has_many :images
  has_many :orders

  # def supplier
  #   Supplier.where(id: supplier_id)
  # end

  # def image
  #   Image.where(product_id: id)
  # end

  def is_discounted?
    if price < 10
      true
    else
      false
    end
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end
end
