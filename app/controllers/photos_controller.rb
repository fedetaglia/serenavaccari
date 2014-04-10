class PhotosController < ApplicationController
  before_action :set_project
  before_action :set_photo, only: [:show, :edit, :update, :destroy]
  before_action :delete_image, only: [:destroy]

  def edit
  end


  def create
    @photo = @project.photos.new(photo_params)
    respond_to do |format|
      if @photo.save
        format.html { redirect_to @project, notice: 'Photo successfully uploaded.' }
        format.json { render action: 'show', status: :created, location: @photo }
      else
        format.html { render action: 'new' }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @photo.update(photo_params)
    redirect_to @project, notice: 'Photo successfully updated.'
  end

  def destroy
    @photo.destroy
    respond_to do |format|
      format.html { redirect_to @project }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    def set_project
      @project = Project.find_by_id params[:project_id]
    end

    def set_photo
      @photo = Photo.find_by_id params[:id]
    end

    def delete_image
      @photo.image = nil
      @photo.save
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def photo_params
      params.require(:photo).permit(:name, :description, :image, :project_id)
    end

end