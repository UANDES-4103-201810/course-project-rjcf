class AdminsProjectsController < ApplicationController
  before_action :set_admins_project, only: [:show, :edit, :update, :destroy]

  # GET /admins_projects
  # GET /admins_projects.json
  def index
    @admins_projects = AdminsProject.all
  end

  # GET /admins_projects/1
  # GET /admins_projects/1.json
  def show
  end

  # GET /admins_projects/new
  def new
    @admins_project = AdminsProject.new
  end

  # GET /admins_projects/1/edit
  def edit
  end

  # POST /admins_projects
  # POST /admins_projects.json
  def create
    @admins_project = AdminsProject.new(admins_project_params)

    respond_to do |format|
      if @admins_project.save
        format.html { redirect_to @admins_project, notice: 'Admins project was successfully created.' }
        format.json { render :show, status: :created, location: @admins_project }
      else
        format.html { render :new }
        format.json { render json: @admins_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admins_projects/1
  # PATCH/PUT /admins_projects/1.json
  def update
    respond_to do |format|
      if @admins_project.update(admins_project_params)
        format.html { redirect_to @admins_project, notice: 'Admins project was successfully updated.' }
        format.json { render :show, status: :ok, location: @admins_project }
      else
        format.html { render :edit }
        format.json { render json: @admins_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admins_projects/1
  # DELETE /admins_projects/1.json
  def destroy
    @admins_project.destroy
    respond_to do |format|
      format.html { redirect_to admins_projects_url, notice: 'Admins project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admins_project
      @admins_project = AdminsProject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admins_project_params
      params.fetch(:admins_project, {})
    end
end
