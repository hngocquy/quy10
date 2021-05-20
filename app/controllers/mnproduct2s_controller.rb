class Mnproduct2sController < ApplicationController
  before_action :set_mnproduct2, only: %i[ show edit update destroy ]

  # GET /mnproduct2s or /mnproduct2s.json
  def index
    @mnproduct2s = Mnproduct2.all
  end

  # GET /mnproduct2s/1 or /mnproduct2s/1.json
  def show
  end

  # GET /mnproduct2s/new
  def new
    @mnproduct2 = Mnproduct2.new
  end

  # GET /mnproduct2s/1/edit
  def edit
  end

  # POST /mnproduct2s or /mnproduct2s.json
  def create
    @mnproduct2 = Mnproduct2.new(mnproduct2_params)

    respond_to do |format|
      if @mnproduct2.save
        format.html { redirect_to @mnproduct2, notice: "Mnproduct2 was successfully created." }
        format.json { render :show, status: :created, location: @mnproduct2 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mnproduct2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mnproduct2s/1 or /mnproduct2s/1.json
  def update
    respond_to do |format|
      if @mnproduct2.update(mnproduct2_params)
        format.html { redirect_to @mnproduct2, notice: "Mnproduct2 was successfully updated." }
        format.json { render :show, status: :ok, location: @mnproduct2 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mnproduct2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mnproduct2s/1 or /mnproduct2s/1.json
  def destroy
    @mnproduct2.destroy
    respond_to do |format|
      format.html { redirect_to mnproduct2s_url, notice: "Mnproduct2 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mnproduct2
      @mnproduct2 = Mnproduct2.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mnproduct2_params
      params.require(:mnproduct2).permit(:name_pro, :cate_pro, :price_pro, :desc_pro, :image)
    end
end
