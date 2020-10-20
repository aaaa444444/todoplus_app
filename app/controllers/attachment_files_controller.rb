class AttachmentFilesController < ApplicationController
  def create
    @attachment_file = AttachmentFile.create!(file_params)
   
    respond_to do |format|
      format.html
      format.json {render json: @attachment_file }
    end
  end
  
  def destroy
    @attachment_file = AttachmentFile.find(params[:id])
    if @attachment_file.destroy
      render :json => { result: 'success' }
    else
      render :json => { result: 'error' }
    end
  end
  
  private
  
  def file_params
    params.require(:attachment_file).permit(:id, :file)
  end
end