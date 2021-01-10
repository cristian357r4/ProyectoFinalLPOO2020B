class HabitosController < ApplicationController
  before_action :set_habito, only: [:show, :edit, :update, :destroy]

  # GET /habitos
  # GET /habitos.json
  def index
    set_persona_habitos
  end

  # GET /habitos/1
  # GET /habitos/1.json
  def show
    set_persona_habitos
  end

  # GET /habitos/new
  def new
    @habito = Habito.new
    @paciente = Paciente.find(params[:paciente_id])
  end

  # GET /habitos/1/edit
  def edit
  end

  # POST /habitos
  # POST /habitos.json
  def create
    @habito = Habito.new(habito_params)

    respond_to do |format|
      if @habito.save
        format.html { redirect_to index_habito_path(params[:habito][:paciente_id]), notice: 'Datos guardados correctamente' }
        format.json { render :show, status: :created, location: @habito }
      else
        format.html { render :new }
        format.json { render json: @habito.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /habitos/1
  # PATCH/PUT /habitos/1.json
  def update
    respond_to do |format|
      if @habito.update(habito_params)
        format.html { redirect_to index_habito_path(params[:habito][:paciente_id]), notice: 'Datos actualizados correctamente' }
        format.json { render :show, status: :ok, location: @habito }
      else
        format.html { render :edit }
        format.json { render json: @habito.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /habitos/1
  # DELETE /habitos/1.json
  def destroy
    @habito.destroy
    respond_to do |format|
      format.html { redirect_to index_habito_path(params[:paciente_id]), notice: 'Se elimino el registro' }
      format.json { head :no_content }
    end
  end

  private

  def set_persona_habitos
    paciente = Paciente.find(params[:paciente_id])
    @persona = paciente.personas.last
    @habitos = Habito.where(paciente_id: params[:paciente_id])
  end
  # Use callbacks to share common setup or constraints between actions.
  def set_habito
    @habito = Habito.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def habito_params
    params.require(:habito).permit(:paciente_id, :tabaco, :alcohol, :otros, :preferida, :tiempo_consumo,
                                   :average_dream, :cantidad_agua, :numero_comidas )
  end
end