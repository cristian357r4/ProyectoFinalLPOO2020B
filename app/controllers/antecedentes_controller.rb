class AntecedentesController < ApplicationController
  before_action :set_antecedente, only: [:show, :edit, :update, :destroy]

  # GET /antecedentes
  # GET /antecedentes.json
  def index
    set_persona_antecedente
  end

  # GET /antecedentes/1
  # GET /antecedentes/1.json
  def show
    set_persona_antecedente
  end

  # GET /antecedentes/new
  def new
    @antecedente = Antecedente.new
    @paciente = Paciente.find(params[:paciente_id])
  end

  # GET /antecedentes/1/edit
  def edit
  end

  # POST /antecedentes
  # POST /antecedentes.json
  def create
    @antecedente = Antecedente.new(antecedente_params)

    respond_to do |format|
      if @antecedente.save
        format.html { redirect_to index_antecedente_path(params[:antecedente][:paciente_id]),
                                  notice: 'Datos registrados correctamente. ' }
      else
        format.html { redirect_to index_antecedente_path(params[:antecedente][:paciente_id]),
                                  notice: 'Ocurrio un error mientras se guardaba el registro. ' }
      end
    end
  end

  # PATCH/PUT /antecedentes/1
  # PATCH/PUT /antecedentes/1.json
  def update
    respond_to do |format|
      if @antecedente.update(antecedente_params)
        format.html { redirect_to index_antecedente_path(params[:antecedente][:paciente_id]),
                                  notice: 'Datos actualizados correctamente. ' }
      else
        format.html { redirect_to index_antecedente_path(params[:antecedente][:paciente_id]),
                                  notice: 'Ocurrio un error mientras se guardaba el registro. ' }
      end
    end
  end

  # DELETE /antecedentes/1
  # DELETE /antecedentes/1.json
  # TODO aqui va el catch por si quiero eliminar registros en uso
  def destroy
    @antecedente.destroy
    respond_to do |format|
      format.html { redirect_to index_antecedente_path(params[:paciente_id]),
                                notice: 'Registro eliminado correctamente. ' }
    end
  end

  private
  def set_persona_antecedente
    paciente = Paciente.find(params[:paciente_id])
    @persona = paciente.personas.last
    @antecedentes = Antecedente.where(paciente_id: params[:paciente_id])
  end
  # Use callbacks to share common setup or constraints between actions.
  def set_antecedente
    @antecedente = Antecedente.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def antecedente_params
    params.require(:antecedente).permit(:paciente_id, :diabetes, :obesidad, :htrigli, :hcolesterol,
                                        :cancer, :hipertension, :gota, :otro )
  end
end
