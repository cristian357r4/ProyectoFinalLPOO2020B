class PacientesController < ApplicationController
  before_action :set_paciente, only: [:show, :edit, :update, :destroy]

  # GET /pacientes
  # GET /pacientes.json
  def index
    @pacientes = Paciente.all
    #hacer un join de las personas que son pacientes
    # persona =Persona.where(perstable_type: "Paciente") mostrara todos los datos de las personas que son pacientes
    # persona.perstable <= esto obtiene  el registro que concide con el id seleccionado algo como Paciente.where(id:
  end

  # GET /pacientes/1
  # GET /pacientes/1.json
  def show
    #aqui deben ir los datos del paciente tambien
  end

  # GET /pacientes/new
  def new
    @paciente = Paciente.new
    @persona = @paciente.personas.new
  end

  # GET /pacientes/1/edit
  def edit
  end

  # POST /pacientes
  # POST /pacientes.json
  def create
    @paciente = Paciente.new(paciente_params)
    @persona = @paciente.personas.new(persona_params)

    respond_to do |format|
      if @persona.save
        format.html { redirect_to @paciente, notice: 'Paciente was successfully created.' }
        format.json { render :show, status: :created, location: @paciente }
      else
        format.html { render :new }
        format.json { render json: @paciente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pacientes/1
  # PATCH/PUT /pacientes/1.json
  def update
    respond_to do |format|
      if @paciente.update(paciente_params)
        format.html { redirect_to @paciente, notice: 'Paciente was successfully updated.' }
        format.json { render :show, status: :ok, location: @paciente }
      else
        format.html { render :edit }
        format.json { render json: @paciente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pacientes/1
  # DELETE /pacientes/1.json
  def destroy
    #elimina correctamente pero falta pedir confirmacion o validar que se pueda destruir
    @paciente.destroy
    respond_to do |format|
      format.html { redirect_to pacientes_url, notice: 'Paciente was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_paciente
    @paciente = Paciente.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def paciente_params
    params.require(:persona).require(:paciente).permit(:domicilio, :civil, :nss, :edad, :peso, :talla, :imc, :t_sangre)
  end
  def persona_params
    params.require(:persona).permit(:nombre,:paterno,:materno,:sexo, :telefono, :correo)

  end
end
