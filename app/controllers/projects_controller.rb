class ProjectsController < ApplicationController
  skip_before_filter :authenticate_user!, only: [:index]
  before_action :set_project, only: [:show, :edit, :update, :destroy]
  before_action :delete_cover, only: [:destroy]
  before_action :set_side_menu




  def index
    
    @works = Project.where(category: 'works')
    @competitions = Project.where(category: 'competitions')
    @workshops = Project.where(category: 'workshops')
    @studies = Project.where(category: 'studies')
    
    # @projects = Project.all
    # backbone.js
    # @check_user = current_user ? true : false
    # @projects_json = Jbuilder.encode do |json|
    #   json.array! @projects do |project|
    #     json.id project.id
    #     json.name project.name
    #     json.description project.description
    #     json.location project.location
    #     json.year project.year
    #     json.note project.note
    #     json.cover_url project.cover.url
    #     json.can_edit @check_user
    #     json.photos project.photos do | photo |
    #       json.name photo.name
    #       json.description photo.description
    #       json.url photo.image.url
    #       json.updated_at photo.image_updated_at
    #     end
    #   end
    # end

    respond_to do |format|
      format.html
      format.json { render json: @projects_json }
    end
  end

  def show
    @photo = Photo.new
    @photos = @project.photos.order('image_updated_at')
  end

  def new
    @project = Project.new
  end

  def edit
  end

  def create
    @project = Project.new(project_params)

    respond_to do |format|
      if @project.save
        format.html { redirect_to @project, notice: 'Project was successfully created.' }
        format.json { render action: 'show', status: :created, location: @project }
      else
        format.html { render action: 'new' }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
      respond_to do |format|
        if @project.update(project_params)
          format.html { redirect_to @project, notice: 'Project was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: 'edit' }
          format.json { render json: @project.errors, status: :unprocessable_entity }
        end
      end
    end

  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_path }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find_by_id params[:id]
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:project).permit(:name, :description, :category, :location, :year, :note, :cover)
    end

    def delete_cover
      @project.cover = nil
      @project.save
    end

    def set_side_menu
      @sidemenu = { works: "works",
                    competitions: "competitions",
                    workshops: "workshops",
                    studies: "studies"}
    end

end