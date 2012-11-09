class CreateProductos < ActiveRecord::Migration
  def change
    create_table :productos do |t|
      t.string :nombre
      t.float :precio
      t.integer :cantidad

      t.timestamps
    end
  end
end
