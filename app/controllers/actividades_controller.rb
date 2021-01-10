class ActividadesController < ApplicationController
  before_action :set_actividad, only: [:show, :edit, :update, :destroy]

  # GET /actividades
  # GET /actividades.json
  def index
    set_persona_actividad
  end

  # GET /actividades/1
  # GET /actividades/1.json
  def show
    set_persona_actividad
  end

  # GET /actividades/new
  def new
    @actividad = Actividad.new
    @paciente = Paciente.find(params[:paciente_id])
  end

  # GET /actividades/1/edit
  def edit
  end

  # POST /actividades
  # POST /actividades.json
  def create
    @actividad = Actividad.new(actividad_params)

    respond_to do |format|
      if @actividad.save
        format.html { redirect_to index_actividad_path(params[:actividad][:paciente_id]),
                                  notice: 'Datos de Actividad Fisica guardados correctamente.' }
      else
        format.html { redirect_to index_actividad_path(params[:actividad][:paciente_id]),
                                  notice: 'Ocurrio un error mientras se guardaba el registro' }
      end
    end
  end

  # PATCH/PUT /actividades/1
  # PATCH/PUT /actividades/1.json
  def update
    respond_to do |format|
      if @actividad.update(actividad_params)
        format.html { redirect_to index_actividad_path(params[:actividad][:paciente_id]),
                                  notice: 'Actividad se actualizo correctamente.' }
      else
        format.html { redirect_to index_actividad_path(params[:actividad][:paciente_id]),
                                  notice: 'Ocurrio un error mientras se guardaba el registro.' }
      end
    end
  end

  # DELETE /actividades/1
  # DELETE /actividades/1.json
  def destroy
    @actividad.destroy
    respond_to do |format|
      format.html { redirect_to index_actividad_path(params[:paciente_id]),
                                notice: 'Actividad se elimino correctamente.' }
    end
  end

  private

  def set_persona_actividad
    paciente = Paciente.find(params[:paciente_id])
    @persona = paciente.personas.last
    @actividades = Actividad.where(paciente_id: params[:paciente_id])
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_actividad
    @actividad = Actividad.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def actividad_params
    params.require(:actividad).permit(:paciente_id, :deporte, :descripcion, :frecuencia, :duracion,
                                      :tiempo_practica, :grupo_solitario, :equipo_amateur, :gym )
  end
end
