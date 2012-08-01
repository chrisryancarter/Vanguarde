class WorkController < ApplicationController
  def show
    work = Work.find params[:id]
    work_gallery = work.work_images
    render :json => [work, work_gallery]
  end
end
