class Gallery < ActiveRecord::Base
  has_many :pictures

  default_scope { order('created_at DESC') }

  def previous
    self.class.unscoped.order('id DESC').where('id < ?', id).first
  end

  def next
    self.class.unscoped.order('id ASC').where('id > ?', id).first
  end

  def cover
    self.pictures.first.image.url
  end
end
