class UserFundProjectsController < ApplicationController
  before_action :set_user_fund_project, only: [:show, :edit, :update, :destroy]

  # GET /user_fund_projects
  # GET /user_fund_projects.json
  def index
    @user_fund_projects = UserFundProject.all

  end

  # GET /user_fund_projects/1
  # GET /user_fund_projects/1.json
  def show
  end

  # GET /user_fund_projects/new
  def new
    @user_fund_project = UserFundProject.new
  end

  # GET /user_fund_projects/1/edit
  def edit
  end

  # POST /user_fund_projects
  # POST /user_fund_projects.json
  def create
    @user_fund_project = UserFundProject.new(user_fund_project_params)

    respond_to do |format|
      if @user_fund_project.save
        format.html { redirect_to @user_fund_project, notice: 'User fund project was successfully created.' }
        format.json { render :show, status: :created, location: @user_fund_project }
      else
        format.html { render :new }
        format.json { render json: @user_fund_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_fund_projects/1
  # PATCH/PUT /user_fund_projects/1.json
  def update
    respond_to do |format|
      if @user_fund_project.update(user_fund_project_params)
        format.html { redirect_to @user_fund_project, notice: 'User fund project was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_fund_project }
      else
        format.html { render :edit }
        format.json { render json: @user_fund_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_fund_projects/1
  # DELETE /user_fund_projects/1.json
  def destroy
    @user_fund_project.destroy
    respond_to do |format|
      format.html { redirect_to user_fund_projects_url, notice: 'User fund project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_fund_project
      @user_fund_project = UserFundProject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_fund_project_params
      params.require(:user_fund_project).permit(:amount, :user_id, :proyect_id)
    end
end
