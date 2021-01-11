class SignosController < ApplicationController
  before_action :get_consulta
  before_action :set_signo, only: [:show, :edit, :update, :destroy]

  # GET /signos
  # GET /signos.json
  def index
    @signos = @consulta.signos
  end

  # GET /signos/1
  # GET /signos/1.json
  def show
  end

  # GET /signos/new
  def new
    @signo = @consulta.signos.build
  end

  # GET /signos/1/edit
  def edit
  end

  # POST /signos
  # POST /signos.json
  def create
    @signo = @consulta.signos.build(signo_params)

    respond_to do |format|
      if @signo.save
        format.html { redirect_to consulta_signos_path, notice: 'Signo creado correctamente.' }
        format.json { render :show, status: :created, location: @signo }
      else
        format.html { render :new }
        format.json { render json: @signo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /signos/1
  # PATCH/PUT /signos/1.json
  def update
    respond_to do |format|
      if @signo.update(signo_params)
        format.html { redirect_to consulta_signo_path, notice: 'Signo actualizado.' }
        format.json { render :show, status: :ok, location: @signo }
      else
        format.html { render :edit }
        format.json { render json: @signo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /signos/1
  # DELETE /signos/1.json
  def destroy
    @signo.destroy
    respond_to do |format|
      format.html { redirect_to consulta_signos_path, notice: 'Signo eliminado.' }
      format.json { head :no_content }
    end
  end

  private
  def get_consulta
    @consulta = Consulta.find(params[:consulta_id])
  end
  # Use callbacks to share common setup or constraints between actions.
  def set_signo
    @signo = @consulta.signos.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def signo_params
    params.require(:signo).permit(:consulta_id, :cabello, :piel, :nails, :ojos, :peso_corporal, :presion_sanguinea, :frecuencia_respiratoria, :frecuencia_cardiaca)
  end
end
