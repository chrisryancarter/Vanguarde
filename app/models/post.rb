class Post < ActiveRecord::Base
  attr_accessible :body, :image, :published, :snippet, :title, :video

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
