class PacientesController < ApplicationController
  before_action :require_user
  before_action :set_paciente, only: [:show, :destroy]
  #TODO la parte de update debe corregirse pero mejor continuar con lo que sigue es el unico modulo que no sirve
  #TODO editar datos personales y de paciente pro separado facilita las cosas
  #
  # GET /pacientes
  # GET /pacientes.json
  def index
    #paciente_by_nutriologo = Paciente.where(nutriologo_id: session[:nutriologo_id])
    @pacientes = Persona.paciente
    # Se opto por crear un scope, de esta forma ya se manda a llamar solo esl scope como muestra arriba. el scope esta definido en el modelo
    # persona.perstable <= esto obtiene  el registro que concide con el id seleccionado algo como Paciente.where(id:
  end

  # GET /pacientes/1
  # GET /pacientes/1.json
  def show
    @persona = Persona.find(params[:id])
    @paciente = @persona.perstable
    #aqui deben ir los datos del paciente tambien
  end

  # GET /pacientes/new
  def new
    @paciente = Paciente.new
    @persona = @paciente.personas.new
  end

  # GET /pacientes/1/edit
  def edit
    #Editar solo los datos del paciente como correo.

    @paciente = Paciente.find(params[:id])
    @persona = @paciente.personas.last

  end
  def edit_paciente
  end

  # POST /pacientes
  # POST /pacientes.json
  def create
    @paciente = Paciente.new(paciente_params)
    @persona = @paciente.personas.new(persona_params)

    respond_to do |format|
      if @persona.save
        format.html { redirect_to pacientes_url, notice: 'Datos del paciente fueron guardados' }
      else
        format.html { render :new }
        format.json { render json: @paciente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pacientes/1
  # PATCH/PUT /pacientes/1.json
  # falta revisar esta parte
  def update
    @paciente = Paciente.find(params[:id])

    @upersona = @paciente.personas.last
    @paciente_edit = @upersona.perstable
    respond_to do |format|
      if @paciente_edit.update(params[:paciente].permit(:domicilio, :civil, :nss, :edad, :peso, :talla, :imc, :t_sangre, :persona))
        format.html { redirect_to pacientes_path , notice: 'Paciente was successfully updated.' }
        format.json { render :show, status: :ok, location: pacientes_path }
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
      format.html { redirect_to pacientes_url, notice: 'Paciente Eliminado correctamente.' }
      format.json { head :no_content }
    end
  rescue ActiveRecord::StatementInvalid => e
    flash[:danger] = 'No se puede eliminar el registro esta en uso'
    redirect_to pacientes_path
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_paciente
    @persona = Persona.find(params[:id])
    @paciente = @persona.perstable
  end

  # Only allow a list of trusted parameters through.
  def paciente_params
    params.require(:persona).require(:paciente).permit(:domicilio, :civil, :nss, :edad, :peso, :talla, :imc, :t_sangre, :nutriologo_id)
  end
  def persona_params
    params.require(:persona).permit(:nombre,:paterno,:materno,:sexo, :telefono, :correo)

  end
end
