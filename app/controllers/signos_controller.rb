class SignosController < ApplicationController
  before_action :set_signo, only: [:show, :edit, :update, :destroy]

  # GET /signos
  # GET /signos.json
  def index
    @signos = Signo.all
  end

  # GET /signos/1
  # GET /signos/1.json
  def show
  end

  # GET /signos/new
  def new
    @signo = Signo.new
  end

  # GET /signos/1/edit
  def edit
  end

  # POST /signos
  # POST /signos.json
  def create
    @signo = Signo.new(signo_params)

    respond_to do |format|
      if @signo.save
        format.html { redirect_to @signo, notice: 'Signo was successfully created.' }
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
        format.html { redirect_to @signo, notice: 'Signo was successfully updated.' }
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
      format.html { redirect_to signos_url, notice: 'Signo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_signo
      @signo = Signo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def signo_params
      params.require(:signo).permit(:consulta_id, :cabello, :piel, :nails, :ojos, :peso_corporal, :presion_sanguinea, :frecuencia_respiratoria, :frecuencia_cardiaca)
    end
end
