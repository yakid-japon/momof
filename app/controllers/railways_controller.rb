class RailwaysController < ApplicationController
  before_action :set_railway, only: %i[ show edit update destroy ]

  # GET /railways or /railways.json
  def index
    @railways = Railway.all
  end

  # GET /railways/1 or /railways/1.json
  def show
  end
  # GET /railways/new
  def new
    @railway = Railway.new
  end
  # GET /railways/1/edit
  def edit
  end

  # POST /railways or /railways.json
  def create
    @railway = Railway.new(railway_params)

    respond_to do |format|
      if @railway.save
        format.html { redirect_to @railway, notice: "Railway was successfully created." }
        format.json { render :show, status: :created, location: @railway }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @railway.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /railways/1 or /railways/1.json
  def update
    respond_to do |format|
      if @railway.update(railway_params)
        format.html { redirect_to @railway, notice: "Railway was successfully updated." }
        format.json { render :show, status: :ok, location: @railway }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @railway.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /railways/1 or /railways/1.json
  def destroy
    @railway.destroy
    respond_to do |format|
      format.html { redirect_to railways_url, notice: "Railway was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_railway
      @railway = Railway.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def railway_params
      params.require(:railway).permit(:name, :station, :minute, :property_id)
    end
end
