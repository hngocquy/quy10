class MnproductsController < ApplicationController
  before_action :set_mnproduct, only: %i[ show edit update destroy ]

  # GET /mnproducts or /mnproducts.json
    layout 'admin_layout'
  def index
    @mnproducts = Mnproduct.all

  end

  # GET /mnproducts/1 or /mnproducts/1.json
  def show
  end

  # GET /mnproducts/new
  def new
    @mnproduct = Mnproduct.new
    
  end

  # GET /mnproducts/1/edit
  def edit
  end

  # POST /mnproducts or /mnproducts.json
  def create
    @mnproduct = Mnproduct.new(mnproduct_params)

    respond_to do |format|
      if @mnproduct.save
        format.html { redirect_to @mnproduct, notice: "Mnproduct was successfully created." }
        format.json { render :show, status: :created, location: @mnproduct }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mnproduct.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mnproducts/1 or /mnproducts/1.json
  def update
    respond_to do |format|
      if @mnproduct.update(mnproduct_params)
        format.html { redirect_to @mnproduct, notice: "Mnproduct was successfully updated." }
        format.json { render :show, status: :ok, location: @mnproduct }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mnproduct.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mnproducts/1 or /mnproducts/1.json
  def destroy
    @mnproduct.destroy
    respond_to do |format|
      format.html { redirect_to mnproducts_url, notice: "Mnproduct was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mnproduct
      @mnproduct = Mnproduct.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mnproduct_params
      params.require(:mnproduct).permit(:name_pro, :cate_pro, :price_pro, :desc_pro, :image)
    end
end
