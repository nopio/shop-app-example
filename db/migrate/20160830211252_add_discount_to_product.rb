class AddDiscountToProduct < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :discount, :float
  end
end
