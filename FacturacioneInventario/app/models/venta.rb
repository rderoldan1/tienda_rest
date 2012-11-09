class Venta < ActiveRecord::Base
  attr_accessible :cantidad, :precio, :producto_id
end
