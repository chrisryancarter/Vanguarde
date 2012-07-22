class WorkImage < ActiveRecord::Base
  belongs_to :work
  attr_accessible :image
  mount_uploader :image, ImageUploader
end
