class ApplicationController < ActionController::Base
  helper_method :current_user, :require_user, :logged_in?

  def current_user
    if session[:nutriologo_id]
      # puede ser posible solucion a el id paciente que no se muestra
      current_nutri ||= Nutriologo.find(session[:nutriologo_id])
      @nutri_personal_data ||= current_nutri.personas.last

    end
  end

  def logged_in?
    !!current_user
  end

  def require_user
    unless logged_in?
      flash[:danger] = 'Debes Iniciar sesion'
      redirect_to root_path
    end
  end

  def disable_nav
    @disable_nav = true
  end

end
