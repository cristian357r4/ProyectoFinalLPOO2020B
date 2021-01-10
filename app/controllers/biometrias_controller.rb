class BiometriasController < ApplicationController
  before_action :set_biometria, only: [:show, :edit, :update, :destroy]

  # GET /biometrias
  # GET /biometrias.json
  def index
    set_persona_biometria
  end

  # GET /biometrias/1
  # GET /biometrias/1.json
  def show
    set_persona_biometria
  end

  # GET /biometrias/new
  def new
    @biometria = Biometria.new
    @paciente = Paciente.find(params[:paciente_id])
  end

  # GET /biometrias/1/edit
  def edit
  end

  # POST /biometrias
  # POST /biometrias.json
  def create
    @biometria = Biometria.new(biometria_params)

    respond_to do |format|
      if @biometria.save
        format.html { redirect_to index_biometria_path(params[:biometria][:paciente_id]), notice: 'Datos de biometria guardados correctamente'}
        format.json { render :show, status: :created, location: @biometria }
      else
        format.html { render :new }
        format.json { render json: @biometria.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /biometrias/1
  # PATCH/PUT /biometrias/1.json
  def update
    respond_to do |format|
      if @biometria.update(biometria_params)
        format.html { redirect_to index_biometria_path(params[:biometria][:paciente_id]), notice: 'Biometria se actualizo correctamente'}
        format.json { render :show, status: :ok, location: @biometria }
      else
        format.html { render :edit }
        format.json { render json: @biometria.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /biometrias/1
  # DELETE /biometrias/1.json
  def destroy
    @biometria.destroy
    respond_to do |format|
      format.html { redirect_to index_biometria_path(params[:paciente_id]), notice: 'Biometria elimino correctamente.' }
      format.json { head :no_content }
    end
  end

  private

  def set_persona_biometria
    paciente = Paciente.find(params[:paciente_id])
    @persona = paciente.personas.last
    @biometrias = Biometria.where(paciente_id: params[:paciente_id])
  end

  # Use callbacks to share common setup or constraints between actions.
    def set_biometria
      @biometria = Biometria.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def biometria_params
      params.require(:biometria).permit(:paciente_id, :globulos_rojos,:globulos_blancos, :plaquetas, :hemoglobina, :hematocritos, :neutrofilos, :monocitos, :linfocitos)
    end
end
