class Product < ActiveRecord::Base
  has_many :picture_products
  has_many :pictures, through: :picture_products

  def name
    "#{self.medium} - #{self.size} - #{self.price}"
  end
end
