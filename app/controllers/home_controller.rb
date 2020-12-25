class HomeController < ApplicationController
  def index
    @nutriologo = Nutriologo.new
    @persona = @nutriologo.personas.new
  end

  def registro
    @nutriologo = Nutriologo.new(params[:persona][:nutriologo].permit(:cedula, :login, :password))
    @persona = @nutriologo.personas.new(params[:persona].permit(:nombre,:paterno,:materno,
                                                               :sexo, :telefono, :correo))
    @persona.save
  end

private
  def nutriparams
  end
end
