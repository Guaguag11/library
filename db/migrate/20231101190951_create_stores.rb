class CreateStores < ActiveRecord::Migration[7.1]
  def change
    create_table :stores do |t|
      t.string :codename
      t.string :adress
      t.string :phone

      t.timestamps
    end
  end
end
