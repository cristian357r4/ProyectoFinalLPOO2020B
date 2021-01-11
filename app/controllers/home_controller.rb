class HomeController < ApplicationController
  def index
    @nutriologo = Nutriologo.new
    @persona = @nutriologo.personas.new
  end

  def registro
    @nutriologo = Nutriologo.new(params[:persona][:nutriologo].permit(:cedula, :login, :password))
    @persona = @nutriologo.personas.new(params[:persona].permit(:nombre,:paterno,:materno,
                                                                :sexo, :telefono, :correo))

    if @persona.save
      flash[:succes] = 'Se ha registrado con exito'
      redirect_to login_path
    else
      flash[:danger] = 'Ocurrio algo mientras se guardaban sus datos y no se pudo registrar intente nuevamente'
      redirect_to registrar_nutriologo_path
    end
  end

  private
  def nutriparams
  end
end
