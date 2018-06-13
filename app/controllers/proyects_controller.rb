class ProyectsController < ApplicationController
  before_action :set_proyect, only: [:show, :edit, :update, :destroy]
  helper_method :UFP

  # GET /proyects
  # GET /proyects.json
  def index

    @proyects = Proyect.all
    if params[:search]
      @proyects = Proyect.search(params[:search]).order("created_at DESC")

      else if params[:category_id]
        @category = Category.find params[:category_id]
        @proyects = @category.proyects
      else if params[:user_id]
             @user = User.find params[:user_id]
             @proyects = @user.proyects
           else
             @proyects = Proyect.all
             flash[:alert] = "There are no projects that matches your search"
           end
      end
    end
  end

  # GET /proyects/1
  # GET /proyects/1.json
  def show

  end


  # GET /proyects/new
  def new
    if user_signed_in?
      @proyect = Proyect.new
    else
      render :file => File.join(Rails.root, 'public/404'), :formats => [:html], :status => 404, :layout => false
    end
  end

  # GET /proyects/1/edit
  def edit
    @user = User.find params[:id]
    if not user_signed_in?
      render :file => File.join(Rails.root, 'public/404'), :formats => [:html], :status => 404, :layout => false
    end
    if user_signed_in?
      if not @user.admin
        if  @user != @proyect.user_id
        render :file => File.join(Rails.root, 'public/404'), :formats => [:html], :status => 404, :layout => false
        end
      end

    end
    end

  # POST /proyects
  # POST /proyects.json
  def create
    @proyect = Proyect.new(proyect_params)

    respond_to do |format|
      if @proyect.save
        format.html { redirect_to @proyect, notice: 'Proyect was successfully created.' }
        format.json { render :show, status: :created, location: @proyect }
      else
        format.html { render :new }
        format.json { render json: @proyect.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /proyects/1
  # PATCH/PUT /proyects/1.json
  def update
    @user = current_user
    respond_to do |format|
      if @proyect.update(proyect_params)
        UfpMailer.with(user: @user).ufp.deliver_now
        format.html { redirect_to @proyect, notice: 'Proyect was successfully updated.' }
        format.json { render :show, status: :ok, location: @proyect }
      else
        format.html { render :edit }
        format.json { render json: @proyect.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proyects/1
  # DELETE /proyects/1.json
  def destroy
    @proyect.destroy
    respond_to do |format|
      format.html { redirect_to proyects_url, notice: 'Proyect was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proyect
      @proyect = Proyect.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def proyect_params
      params.require(:proyect).permit(:name, :user_id, :category_id, :avatar, :amount, :preamount, :fixedamount, :description)
    end
end
