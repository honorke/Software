class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.integer :book_id
      t.text :book_comment
      t.integer :star
      t.integer :comment_parent

      t.timestamps
    end
  end
end
