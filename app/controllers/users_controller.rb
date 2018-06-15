class UsersController < ApplicationController
  protect_from_forgery prepend: true
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
load_and_authorize_resource
  # GET /users
  # GET /users.json
  def index
    @users = User.all
    @proyects = Proyect.all


  end

  def hello
    @user = current_user.user_signed_in?
  end
  # GET /users/1
  # GET /users/1.json
  def show
    @user_fund_projects = UserFundProject.all
    @proyects = Proyect.all
  end

  # GET /users/new
  def new
    @user = current_user
    if not user_signed_in?
      render :file => File.join(Rails.root, 'public/404'), :formats => [:html], :status => 404, :layout => false
    end
    if user_signed_in?
      if not @user.admin
        render :file => File.join(Rails.root, 'public/404'), :formats => [:html], :status => 404, :layout => false
      end
    end
    @user = User.new
  end

  # GET /users/1/edit
  def edit
    if not user_signed_in?
      render :file => File.join(Rails.root, 'public/404'), :formats => [:html], :status => 404, :layout => false
    end
    if user_signed_in?
      if not current_user.admin
        if current_user != @user
        render :file => File.join(Rails.root, 'public/404'), :formats => [:html], :status => 404, :layout => false
      end
    end
    end
    end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:username, :email, :password, :admin, :avatar, :biography)
    end
end
