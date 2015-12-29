class Gallery < ActiveRecord::Base
  has_many :pictures

  default_scope { order('created_at DESC') }
end
