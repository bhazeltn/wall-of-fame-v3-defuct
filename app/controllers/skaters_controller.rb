class SkatersController < ApplicationController
  before_action :set_skater, only: %i[ show edit update destroy ]

  # GET /skaters or /skaters.json
  def index
    @skaters = Skater.all
  end

  # GET /skaters/1 or /skaters/1.json
  def show
  end

  # GET /skaters/new
  def new
    @skater = Skater.new
  end

  # GET /skaters/1/edit
  def edit
  end

  # POST /skaters or /skaters.json
  def create
    @skater = Skater.new(skater_params)

    respond_to do |format|
      if @skater.save
        format.html { redirect_to skater_url(@skater), notice: "Skater was successfully created." }
        format.json { render :show, status: :created, location: @skater }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @skater.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /skaters/1 or /skaters/1.json
  def update
    respond_to do |format|
      if @skater.update(skater_params)
        format.html { redirect_to skater_url(@skater), notice: "Skater was successfully updated." }
        format.json { render :show, status: :ok, location: @skater }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @skater.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /skaters/1 or /skaters/1.json
  def destroy
    @skater.destroy

    respond_to do |format|
      format.html { redirect_to skaters_url, notice: "Skater was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_skater
      @skater = Skater.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def skater_params
      params.require(:skater).permit(:f_name, :l_name)
    end
end
