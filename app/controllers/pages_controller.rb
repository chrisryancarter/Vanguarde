class PagesController < ApplicationController
  def home
  	@posts = Post.all
    @works = Work.all
  end

  def about
  end

  def contact
  end
end
