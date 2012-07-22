class Work < ActiveRecord::Base

  has_many :work_images,
    :dependent => :destroy

  accepts_nested_attributes_for :work_images,
    :reject_if => lambda { |work_image| work_image[:image].blank? },
    :allow_destroy => true

  attr_accessible :credits, :featured_image, :fulltext, :logo, :project_scope, :season, :selected, :subtext, :title, :work_images_attributes, :image_cache, :featured_image_cache, :logo_cache

  mount_uploader :featured_image, ImageUploader
  mount_uploader :logo, ImageUploader

end
