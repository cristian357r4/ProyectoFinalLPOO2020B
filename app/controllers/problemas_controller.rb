class ProblemasController < ApplicationController
  before_action :get_consulta
  before_action :set_problema, only: [:show, :edit, :update, :destroy]

  # GET /problemas
  # GET /problemas.json
  def index
    @problemas = @consulta.problemas
  end

  # GET /problemas/1
  # GET /problemas/1.json
  def show
  end

  # GET /problemas/new
  def new
    @problema = @consulta.problemas.build
  end

  # GET /problemas/1/edit
  def edit
  end

  # POST /problemas
  # POST /problemas.json
  def create
    @problema = @consulta.problemas.build(problema_params)

    respond_to do |format|
      if @problema.save
        format.html { redirect_to consulta_problemas_path(@consulta), notice: 'Problema fue guardado con exito.' }
        format.json { render :show, status: :created, location: @problema }
      else
        format.html { render :new }
        format.json { render json: @problema.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /problemas/1
  # PATCH/PUT /problemas/1.json
  def update
    respond_to do |format|
      if @problema.update(problema_params)
        format.html { redirect_to consulta_problema_path(@consulta), notice: 'Problema was successfully updated.' }
        format.json { render :show, status: :ok, location: @problema }
      else
        format.html { render :edit }
        format.json { render json: @problema.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /problemas/1
  # DELETE /problemas/1.json
  def destroy
    @problema.destroy
    respond_to do |format|
      format.html { redirect_to consulta_problemas_path(@consulta), notice: 'Problema was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def get_consulta
    @consulta = Consulta.find(params[:consulta_id])
  end
  def set_problema
    @problema =  @consulta.problemas.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def problema_params
    params.require(:problema).permit(:consulta_id, :diarrea, :nauseas, :obesidad, :estrenimiento, :gastritis, :vomito, :insomnio, :ansiedad)
  end
end
