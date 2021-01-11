class PlansuplementosController < ApplicationController
  before_action :set_plansuplemento, only: [:show, :edit, :update, :destroy]

  # GET /plansuplementos
  # GET /plansuplementos.json
  def index
    set_persona_plan
  end

  # GET /plansuplementos/1
  # GET /plansuplementos/1.json
  def show
    set_persona_plan
  end

  # GET /plansuplementos/new
  def new
    @plansuplemento = Plansuplemento.new
    @paciente = Paciente.find(params[:paciente_id])
  end

  # GET /plansuplementos/1/edit
  def edit
  end

  # POST /plansuplementos
  # POST /plansuplementos.json
  def create
    @plansuplemento = Plansuplemento.new(plansuplemento_params)

    respond_to do |format|
      if @plansuplemento.save
        format.html { redirect_to index_plan_path(params[:plansuplemento][:paciente_id]),
                                  notice: 'Datos guardados correctamente.' }
      else
        format.html { redirect_to index_plan_path(params[:plansuplemento][:paciente_id]),
                                  notice: 'Ocurrio un error mientras se guardaba el registro.' }
      end
    end
  end

  # PATCH/PUT /plansuplementos/1
  # PATCH/PUT /plansuplementos/1.json
  def update
    respond_to do |format|
      if @plansuplemento.update(plansuplemento_params)
        format.html { redirect_to index_plan_path(params[:plansuplemento][:paciente_id]),
                                  notice: 'El registro se actualizo correctamente.' }
      else
        format.html { redirect_to index_plan_path(params[:plansuplemento][:paciente_id]),
                                  notice: 'Ocurrio un error mientras se guardaba el registro.' }
      end
    end
  end

  # DELETE /plansuplementos/1
  # DELETE /plansuplementos/1.json
  def destroy
    @plansuplemento.destroy
    respond_to do |format|
      format.html { redirect_to index_plan_path(params[:paciente_id]),
                                notice: 'El registro se elimino correctamente.' }
    end
  end

  private
  def set_persona_plan
    paciente = Paciente.find(params[:paciente_id])
    @persona = paciente.personas.last
    @plansuplementos = Plansuplemento.where(paciente_id: params[:paciente_id])
  end
  # Use callbacks to share common setup or constraints between actions.
  def set_plansuplemento
    @plansuplemento = Plansuplemento.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def plansuplemento_params
    params.require(:plansuplemento).permit(:paciente_id, :suplemento_id, :frecuencia, :cantidad,
                                           :inicion, :fin)
  end
end