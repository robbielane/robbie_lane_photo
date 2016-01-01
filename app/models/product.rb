class Product < ActiveRecord::Base
  has_many :picture_products
  has_many :pictures, through: :picture_products
end
