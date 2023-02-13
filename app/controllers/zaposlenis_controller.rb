class ZaposlenisController < ApplicationController
  before_action :set_zaposleni, only: %i[ show edit update destroy ]

  # GET /zaposlenis or /zaposlenis.json
  def index
    @zaposlenis = Zaposleni.all
  end

  # GET /zaposlenis/1 or /zaposlenis/1.json
  def show
  end

  # GET /zaposlenis/new
  def new
    @zaposleni = Zaposleni.new
  end

  # GET /zaposlenis/1/edit
  def edit
  end

  # POST /zaposlenis or /zaposlenis.json
  def create
    @zaposleni = Zaposleni.new(zaposleni_params)

    respond_to do |format|
      if @zaposleni.save
        format.html { redirect_to zaposleni_url(@zaposleni), notice: "Zaposleni was successfully created." }
        format.json { render :show, status: :created, location: @zaposleni }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @zaposleni.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /zaposlenis/1 or /zaposlenis/1.json
  def update
    respond_to do |format|
      if @zaposleni.update(zaposleni_params)
        format.html { redirect_to zaposleni_url(@zaposleni), notice: "Zaposleni was successfully updated." }
        format.json { render :show, status: :ok, location: @zaposleni }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @zaposleni.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /zaposlenis/1 or /zaposlenis/1.json
  def destroy
    @zaposleni.destroy

    respond_to do |format|
      format.html { redirect_to zaposlenis_url, notice: "Zaposleni was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_zaposleni
      @zaposleni = Zaposleni.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def zaposleni_params
      params.require(:zaposleni).permit(:ime, :prezime, :zanimanje, :email, :telefon)
    end
end
