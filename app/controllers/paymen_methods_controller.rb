class PaymenMethodsController < ApplicationController
  before_action :set_paymen_method, only: [:show, :edit, :update, :destroy]

  # GET /paymen_methods
  # GET /paymen_methods.json
  def index
    @paymen_methods = PaymenMethod.all
  end

  # GET /paymen_methods/1
  # GET /paymen_methods/1.json
  def show
  end

  # GET /paymen_methods/new
  def new
    @paymen_method = PaymenMethod.new
  end

  # GET /paymen_methods/1/edit
  def edit
  end

  # POST /paymen_methods
  # POST /paymen_methods.json
  def create
    @paymen_method = PaymenMethod.new(paymen_method_params)

    respond_to do |format|
      if @paymen_method.save
        format.html { redirect_to @paymen_method, notice: 'Paymen method was successfully created.' }
        format.json { render :show, status: :created, location: @paymen_method }
      else
        format.html { render :new }
        format.json { render json: @paymen_method.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /paymen_methods/1
  # PATCH/PUT /paymen_methods/1.json
  def update
    respond_to do |format|
      if @paymen_method.update(paymen_method_params)
        format.html { redirect_to @paymen_method, notice: 'Paymen method was successfully updated.' }
        format.json { render :show, status: :ok, location: @paymen_method }
      else
        format.html { render :edit }
        format.json { render json: @paymen_method.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /paymen_methods/1
  # DELETE /paymen_methods/1.json
  def destroy
    @paymen_method.destroy
    respond_to do |format|
      format.html { redirect_to paymen_methods_url, notice: 'Paymen method was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paymen_method
      @paymen_method = PaymenMethod.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def paymen_method_params
      params.require(:paymen_method).permit(:card_number, :bank, :cardholder_name)
    end
end
