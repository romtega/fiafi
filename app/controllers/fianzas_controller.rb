class FianzasController < ApplicationController
	before_action :authenticate_user!
	before_action :set_fianza, only: [:edit, :update, :destroy]


	def index
		@primero = current_user.fianzas.where(afianzadora: "Primero Fianzas") 
		@monterrey = current_user.fianzas.where(afianzadora: "ACE Fianzas Monterrey") 
		@sofimex = current_user.fianzas.where(afianzadora: "Afianzadora Sofimex") 
        @zurich = current_user.fianzas.where(afianzadora: "Zurich Fianzas Mexico") 
        @dorama = current_user.fianzas.where(afianzadora: "Fianzas Dorama") 
	end

	def new
		@fianza = Fianza.new
	end

	def create
		@fianza = current_user.fianzas.new(fianza_params)

		respond_to do |format|
			if @fianza.save
				format.html { redirect_to fianzas_path, notice: 'Fianza was successfully created.' }
			else
				format.html { render :new }
			end
		end
	end

	def edit
	end

	def update
		respond_to do |format|
			if @fianza.update(fianza_params)
				format.html { redirect_to fianzas_path, notice: 'Fianza was successfully updated.' }
			else
				format.html { render :edit }
			end
		end
	end

	def destroy
		@fianza.destroy
		respond_to do |format|
			format.html { redirect_to fianza_url, notice: 'Fianza was successfully destroyed.' }
		end
	end

	private

	def set_fianza
		@fianza = Fianza.find(params[:id])
	end

	def fianza_params
		params.require(:fianza).permit(:numerofianza, :textofianza, :afianzadora)
	end
end