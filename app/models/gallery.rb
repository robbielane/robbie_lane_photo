class Gallery < ActiveRecord::Base
  has_many :pictures

  default_scope { order('created_at DESC') }

  def previous
    self.class.unscoped.order(:id).where('id < ?', id).first
  end

  def next
    self.class.unscoped.order(:id).where('id > ?', id).first
  end
end
