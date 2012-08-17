class Post < ActiveRecord::Base
  has_many :news_images,
    :dependent => :destroy

  accepts_nested_attributes_for :news_images,
    :reject_if => lambda { |news_image| news_image[:image].blank? },
    :allow_destroy => true

  attr_accessible :body, :image, :published, :snippet, :title, :video, :news_images_attributes, :image_cache, :category

  mount_uploader :image, ImageUploader

  scope :published, where(:published => true)
  scope :drafts, where(:published => false)

  def status
  	if self.published
  		"published"
  	else
  		"draft"
  	end
  end
end
