class SessionsController < ApplicationController
  before_action :disable_nav, only: [:new, :register]

  def new
  end

  def create
    nutriologo = Nutriologo.find_by(login: params[:session][:login])

    if nutriologo&.authenticate(params[:session][:password])
      session[:nutriologo_id] = nutriologo.id
      flash[:success] = 'Bienvenido'
      redirect_to pacientes_path

    else
      flash[:danger] = 'Usuario o password Incorrecto'
      redirect_to login_path
    end
  end

  def register
    @nutriologo = Nutriologo.new
    @persona = @nutriologo.personas.new
  end

  def destroy
    session[:nutriologo_id] = nil
    flash[:success] = 'Vuleva Pronto'
    redirect_to root_path
  end
end
