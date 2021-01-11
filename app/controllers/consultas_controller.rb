class ConsultasController < ApplicationController
  before_action :set_consulta, only: [:show, :edit, :update, :destroy]

  # GET /consultas
  # GET /consultas.json
  def index
    @consultas = Consulta.all
  end

  # GET /consultas/1
  # GET /consultas/1.json
  def show
  end

  # GET /consultas/new
  def new
    @consulta = Consulta.new
  end

  # GET /consultas/1/edit
  def edit
  end

  # POST /consultas
  # POST /consultas.json
  def create
    @consulta = Consulta.new(consulta_params)
    if @consulta.save
      flash[:success] = 'Se creo correctamente la consulta'
      redirect_to consulta_index_path(@consulta.paciente_id)
    else
      flash[:danger] = 'Algo salio Mal'
      redirect_to consulta_index_path(@consulta.paciente_id)
    end
  end

  # PATCH/PUT /consultas/1
  # PATCH/PUT /consultas/1.json
  def update
    respond_to do |format|
      if @consulta.update(consulta_params)
        format.html { redirect_to @consulta, notice: 'Consulta was successfully updated.' }
        format.json { render :show, status: :ok, location: @consulta }
      else
        format.html { render :edit }
        format.json { render json: @consulta.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /consultas/1
  # DELETE /consultas/1.json
  def destroy
    @consulta.destroy
    respond_to do |format|
      format.html { redirect_to consultas_url, notice: 'Consulta was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_consulta
    @consulta = Consulta.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def consulta_params
    params.require(:consulta).permit(:paciente_id, :nutriologo_id, :anotaciones)
  end
end
