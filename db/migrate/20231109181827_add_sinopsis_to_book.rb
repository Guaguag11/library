class AddSinopsisToBook < ActiveRecord::Migration[7.1]
  def change
    add_column :books, :sinopsis, :string
  end
end
