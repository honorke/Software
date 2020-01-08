class AddColumnToShoppingCarts < ActiveRecord::Migration[5.1]
  def change
    add_column :shopping_carts, :title, :string
    add_column :shopping_carts, :picLocation, :string
  end
end
