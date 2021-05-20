class Mnproduct1sController < ApplicationController
  before_action :set_mnproduct1, only: %i[ show edit update destroy ]
layout'admin_layout'
  # GET /mnproduct1s or /mnproduct1s.json
  def index
    @mnproduct1s = Mnproduct1.all
  end

  # GET /mnproduct1s/1 or /mnproduct1s/1.json
  def show
  end

  # GET /mnproduct1s/new
  def new
    @mnproduct1 = Mnproduct1.new
  end

  # GET /mnproduct1s/1/edit
  def edit
  end

  # POST /mnproduct1s or /mnproduct1s.json
  def create
    @mnproduct1 = Mnproduct1.new(mnproduct1_params)

    respond_to do |format|
      if @mnproduct1.save
        format.html { redirect_to @mnproduct1, notice: "Mnproduct1 was successfully created." }
        format.json { render :show, status: :created, location: @mnproduct1 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mnproduct1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mnproduct1s/1 or /mnproduct1s/1.json
  def update
    respond_to do |format|
      if @mnproduct1.update(mnproduct1_params)
        format.html { redirect_to @mnproduct1, notice: "Mnproduct1 was successfully updated." }
        format.json { render :show, status: :ok, location: @mnproduct1 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mnproduct1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mnproduct1s/1 or /mnproduct1s/1.json
  def destroy
    @mnproduct1.destroy
    respond_to do |format|
      format.html { redirect_to mnproduct1s_url, notice: "Mnproduct1 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mnproduct1
      @mnproduct1 = Mnproduct1.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mnproduct1_params
      params.require(:mnproduct1).permit(:name_pro, :cate_pro, :price_pro, :desc_pro, :image)
    end
end
