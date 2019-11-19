class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :title
      t.decimal :price, precision: 10, scale: 2
      t.string :author
      t.string :publish
      t.string :time
      t.string :path
      t.string :picLocation

      t.timestamps
    end
  end
end
