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
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /fiados/1
  # PATCH/PUT /fiados/1.json
  def update
    respond_to do |format|
      if @fiado.update(fiado_params)
        format.html { redirect_to @fiado, notice: 'Fiado was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /fiados/1
  # DELETE /fiados/1.json
  def destroy
    @fiado.destroy
    respond_to do |format|
      format.html { redirect_to fiados_url, notice: 'Fiado was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fiado
      @fiado = Fiado.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fiado_params
      params.require(:fiado).permit(:nombre, :direccion, :rfc, :telefono, :email, :cdf, :ife, :cf, :da, :ac, :mac, :ah, :ber, :cc)
      
  end
end
