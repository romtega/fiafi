class FiadosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_fiado, only: [:show, :edit, :update, :destroy]

  # GET /fiados
  # GET /fiados.json
  def index
    @fiados = current_user.fiados
  end

  # GET /fiados/1
  # GET /fiados/1.json
  def show
  end

  # GET /fiados/new
  def new
    @fiado = Fiado.new
  end

  # GET /fiados/1/edit
  def edit
  end

  # POST /fiados
  # POST /fiados.json
  def create
    @fiado = current_user.fiados.new(fiado_params)

    respond_to do |format|
      if @fiado.save
        format.html { redirect_to @fiado, notice: 'Fiado was successfully created.' }
        format.json { render :show, status: :created, location: @fiado }
      else
        format.html { render :new }
        format.json { render json: @fiado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fiados/1
  # PATCH/PUT /fiados/1.json
  def update
    respond_to do |format|
      if @fiado.update(fiado_params)
        format.html { redirect_to @fiado, notice: 'Fiado was successfully updated.' }
        format.json { render :show, status: :ok, location: @fiado }
      else
        format.html { render :edit }
        format.json { render json: @fiado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fiados/1
  # DELETE /fiados/1.json
  def destroy
    @fiado.destroy
    respond_to do |format|
      format.html { redirect_to fiados_url, notice: 'Fiado was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fiado
      @fiado = Fiado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fiado_params
      params.require(:fiado).permit(:nombre, :direccion, :rfc, :telefono, :email, :cdf, :ife, :cf, :da, :ac, :mac, :ah, :ber, :cc)

    else

      
  end
end
