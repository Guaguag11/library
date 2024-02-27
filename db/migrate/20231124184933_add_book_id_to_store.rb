class AddBookIdToStore < ActiveRecord::Migration[7.1]
  def change
    add_column :stores, :book_id, :integer
  end
end
