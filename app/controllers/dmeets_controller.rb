class DmeetsController < ApplicationController
  before_action :set_dmeet, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index, :show]
  # GET /dmeets or /dmeets.json
  def index
    @dmeets = Dmeet.all.order("created_at DESC")
    @dmeet = Dmeet.new
  end

  # GET /dmeets/1 or /dmeets/1.json
  def show
  end

  # GET /dmeets/new
  def new
    @dmeet = current_user.dmeets.build
  end

  # GET /dmeets/1/edit
  def edit
  end

  # POST /dmeets or /dmeets.json
  def create
    @dmeet = current_user.dmeets.build(dmeet_params)

    respond_to do |format|
      if @dmeet.save
        format.html { redirect_to root_path, notice: "Dmeet was successfully created." }
        format.json { render :show, status: :created, location: @dmeet }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dmeet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dmeets/1 or /dmeets/1.json
  def update
    respond_to do |format|
      if @dmeet.update(dmeet_params)
        format.html { redirect_to dmeet_url(@dmeet), notice: "Dmeet was successfully updated." }
        format.json { render :show, status: :ok, location: @dmeet }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dmeet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dmeets/1 or /dmeets/1.json
  def destroy
    @dmeet.destroy

    respond_to do |format|
      format.html { redirect_to dmeets_url, notice: "Dmeet was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dmeet
      @dmeet = Dmeet.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dmeet_params
      params.require(:dmeet).permit(:dmeet)
    end
end
