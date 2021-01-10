class QuimicasController < ApplicationController
  before_action :set_quimica, only: [:show, :edit, :update, :destroy ]

  # GET /quimicas
  # GET /quimicas.json
  def index
    set_persona_quimica
  end

  # GET /quimicas/1
  # GET /quimicas/1.json
  def show
    set_persona_quimica
  end

  # GET /quimicas/new
  def new
    @quimica = Quimica.new
    @paciente =Paciente.find(params[:paciente_id])
  end

  # GET /quimicas/1/edit
  def edit
  end

  # POST /quimicas
  # POST /quimicas.json
  def create
    @quimica = Quimica.new(quimica_params)

    respond_to do |format|
      if @quimica.save
        format.html { redirect_to index_quimica_path(params[:quimica][:paciente_id]),
                                  notice: 'Datos de quimica sanguinea guardados correctamente.' }
      else
       format.html { render }
        format.json { render json: @quimica.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quimicas/1
  # PATCH/PUT /quimicas/1.json
  def update
    respond_to do |format|
      if @quimica.update(quimica_params)
        format.html { redirect_to index_quimica_path(params[:quimica][:paciente_id]),
                                  notice: 'Quimica se actualizo correctamente.' }
      else
        format.html { render :edit }
        format.json { render json: @quimica.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quimicas/1
  # DELETE /quimicas/1.json
  def destroy
    @quimica.destroy
    respond_to do |format|
      format.html { redirect_to index_quimica_path(params[:paciente_id]),
                                notice: 'Quimica se Elimino Correctamente.' }
    end
  end

  private

  def set_persona_quimica
    paciente = Paciente.find(params[:paciente_id])
    @persona = paciente.personas.last
    @quimicas = Quimica.where(paciente_id: params[:paciente_id])
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_quimica
    @quimica = Quimica.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def quimica_params
    params.require(:quimica).permit(:paciente_id,:nitrogenourea,:glucosa,:creatina, :acido_urico, :trigliceridos,
                                    :colesterol,:bilirrubina,:dhl)
  end
end
