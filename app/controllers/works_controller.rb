class WorksController < ApplicationController
  def show
    @work = Work.find params[:id]
    #work_gallery = work.work_images
    respond_to do |format|
      format.js {render :layout => false}
      #format.json {render :json => [work, work_gallery]}
    end
  end
end
