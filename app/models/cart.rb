class Cart
  attr_reader :pictures

  def initialize(raw_data)
    @pictures = raw_data || {}
  end

  def add_picture(picture_id, product_id)
    pictures[picture_id.to_s] ||= {product_id.to_s => 0}
    pictures[picture_id.to_s][product_id.to_s] += 1
  end
end
