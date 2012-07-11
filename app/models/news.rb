class News < ActiveRecord::Base
  attr_accessible :featured_image, :fulltext, :subtext, :title, :video
end
