class Cart
  attr_reader :pictures

  def initialize(raw_data)
    @pictures = raw_data || {}
  end

  def add_picture(picture_id, product_id)
    pictures[picture_id.to_s] ||= {product_id.to_s => 0}
    pictures[picture_id.to_s][product_id.to_s] += 1
  end

  def get_picture_name(picture_id)
    picture = Picture.find(picture_id)
    picture.name
  end

  def get_thumb(picture_id)
    picture = Picture.find(picture_id)
    picture.image.url(:thumb)
  end

  def get_medium(product_id)
    product = Product.find(product_id)
    product.medium
  end

  def get_size(product_id)
    product = Product.find(product_id)
    product.size
  end

  def get_price(product_id)
    product = Product.find(product_id)
    product.price
  end

  def line_total(raw)
    product = Product.find(raw.keys.first)
    product.price * raw.values.first
  end

  def get_total_price
    pictures.map { |picture, product| line_total(product) }.reduce(:+)
  end
end
