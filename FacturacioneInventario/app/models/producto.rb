class Producto < ActiveRecord::Base
  attr_accessible :cantidad, :nombre, :precio
end
