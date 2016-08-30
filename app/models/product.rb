class Product < ApplicationRecord
  belongs_to :category
  validates :name, :upc, :price, presence: true

  def self.search(search)
    where("name LIKE ?", "%#{search}%")
  end

  def total_price
    price * (1 - discount)
  end
end
