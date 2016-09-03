class AddLockedBySizeToProduct < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :locked_by_size, :text
  end
end
