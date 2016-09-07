class Product < ApplicationRecord
  belongs_to :category

  serialize :locked_by_size, Hash

  before_create :set_locked_by_size

  def set_locked_by_size
    self.locked_by_size = { s: false, m: false, l: false, xl: false }
  end

  def self.search(search)
    where("name LIKE ?", "%#{search}%")
  end
end
