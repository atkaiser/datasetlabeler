class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  # GET /projects
  def index
    # Needs to be admin only
    @projects = Project.all
  end

  # GET /projects/1
  def show
    @data = @project.data
  end

  # GET /projects/new
  def new
    @project = Project.new
    @id = params[:id]
  end

  # GET /projects/1/edit
  def edit
  end

  # POST /projects
  def create
    @project = Project.new()
    @project.name = params[:project][:name]
    @project.user_id = params[:project][:user_id]
    if @project.save
      redirect_to @project, notice: 'Project was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /projects/1
  def update
    @project.name = params[:project][:name]
    if params[:project][:data]
      params[:project][:data].each do |d|
        datum_hash = {:name => d.original_filename, :project_id => @project.id, :photo => d}
        d = Datum.new(datum_hash)
        d.save
      end
    end
    if @project.save
      redirect_to @project, notice: 'Project was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /projects/1
  def destroy
    @project.destroy
    respond_to do |format|
      redirect_to projects_url
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

end
