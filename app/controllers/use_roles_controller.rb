class UseRolesController < ApplicationController
  before_action :set_use_role, only: [:show, :edit, :update, :destroy]

  # GET /use_roles
  # GET /use_roles.json
  def index
    @use_roles = UseRole.all
  end

  # GET /use_roles/1
  # GET /use_roles/1.json
  def show
  end

  # GET /use_roles/new
  def new
    @use_role = UseRole.new
  end

  # GET /use_roles/1/edit
  def edit
  end

  # POST /use_roles
  # POST /use_roles.json
  def create
    @use_role = UseRole.new(use_role_params)

    respond_to do |format|
      if @use_role.save
        format.html { redirect_to @use_role, notice: 'Use role was successfully created.' }
        format.json { render :show, status: :created, location: @use_role }
      else
        format.html { render :new }
        format.json { render json: @use_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /use_roles/1
  # PATCH/PUT /use_roles/1.json
  def update
    respond_to do |format|
      if @use_role.update(use_role_params)
        format.html { redirect_to @use_role, notice: 'Use role was successfully updated.' }
        format.json { render :show, status: :ok, location: @use_role }
      else
        format.html { render :edit }
        format.json { render json: @use_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /use_roles/1
  # DELETE /use_roles/1.json
  def destroy
    @use_role.destroy
    respond_to do |format|
      format.html { redirect_to use_roles_url, notice: 'Use role was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_use_role
      @use_role = UseRole.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def use_role_params
      params.require(:use_role).permit(:type, :user)
    end
end
