class PagesController < ApplicationController
  def home
  	@posts = Post.find_all_by_published true
    @works = Work.all
  end

  def about
  end

  def contact
  end

  def filter
    @category = params[:category]
  	@posts = Post.find_all_by_published_and_category true, @category
    respond_to do |format|
      format.js {render :layout => false}
    end
  end
end
