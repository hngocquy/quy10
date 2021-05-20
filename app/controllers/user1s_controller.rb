class User1sController < ApplicationController
  before_action :set_user1, only: %i[ show edit update destroy ]

  # GET /user1s or /user1s.json
  def index
    @user1s = User1.all
  end

  # GET /user1s/1 or /user1s/1.json
  def show
  end

  # GET /user1s/new
  def new
    @user1 = User1.new
  end

  # GET /user1s/1/edit
  def edit
  end

  # POST /user1s or /user1s.json
  def create
    @user1 = User1.new(user1_params)

    respond_to do |format|
      if @user1.save
        format.html { redirect_to @user1, notice: "User1 was successfully created." }
        format.json { render :show, status: :created, location: @user1 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user1s/1 or /user1s/1.json
  def update
    respond_to do |format|
      if @user1.update(user1_params)
        format.html { redirect_to @user1, notice: "User1 was successfully updated." }
        format.json { render :show, status: :ok, location: @user1 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user1s/1 or /user1s/1.json
  def destroy
    @user1.destroy
    respond_to do |format|
      format.html { redirect_to user1s_url, notice: "User1 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user1
      @user1 = User1.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user1_params
      params.require(:user1).permit(:name, :mobile, :email, :password, :password_confirmation, :address)
    end
end
