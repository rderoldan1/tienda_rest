class CreateVentas < ActiveRecord::Migration
  def change
    create_table :ventas do |t|
      t.integer :producto_id
      t.integer :cantidad
      t.float :precio

      t.timestamps
    end
  end
end
