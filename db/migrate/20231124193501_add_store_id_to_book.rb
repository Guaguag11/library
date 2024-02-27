class AddStoreIdToBook < ActiveRecord::Migration[7.1]
  def change
    add_column :books, :store_id, :integer
  end
end
