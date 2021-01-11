class DietasController < ApplicationController
  before_action :set_dieta, only: [:show, :edit, :update, :destroy]

  # GET /dietas
  # GET /dietas.json
  def index
    set_persona_dieta
  end

  # GET /dietas/1
  # GET /dietas/1.json
  def show
    set_persona_dieta
  end

  # GET /dietas/new
  def new
    @dieta = Dieta.new
    @paciente = Paciente.find(params[:paciente_id])
  end

  # GET /dietas/1/edit
  def edit
  end

  # POST /dietas
  # POST /dietas.json
  def create
    @dieta = Dieta.new(dieta_params)
    respond_to do |format|
      if @dieta.save
        format.html { redirect_to index_dieta_path(params[:dieta][:paciente_id]),
                                  notice: 'Datos guardados correctamente.' }
      else
        format.html { redirect_to index_dieta_path(params[:dieta][:paciente_id]),
                                  notice: 'Ocurrio un error mientras se guardaban los datos.' }
      end
    end
  end

  # PATCH/PUT /dietas/1
  # PATCH/PUT /dietas/1.json
  def update
    respond_to do |format|
      if @dieta.update(dieta_params)
        format.html { redirect_to index_dieta_path(params[:dieta][:paciente_id]),
                                  notice: 'Datos guardados correctamente.' }
      else
        format.html { redirect_to index_dieta_path(params[:dieta][:paciente_id]),
                                  notice: 'Ocurrio un error mientras se guardaban los datos.' }
      end
    end
  end

  # DELETE /dietas/1
  # DELETE /dietas/1.json
  def destroy
    @dieta.destroy
    respond_to do |format|
      format.html { redirect_to index_dieta_path(params[:paciente_id]),
                                notice: 'El registro se elimino correctamente.' }
    end
  end

  private
  def set_persona_dieta
    paciente = Paciente.find(params[:paciente_id])
    @persona = paciente.personas.last
    @dietas = Dieta.where(paciente_id: params[:paciente_id])
  end
  # Use callbacks to share common setup or constraints between actions.
  def set_dieta
    @dieta = Dieta.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def dieta_params
    params.require(:dieta).permit(:paciente_id, :alimento_id, :comida)
  end
end
