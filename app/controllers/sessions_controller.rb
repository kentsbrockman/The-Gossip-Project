class SessionsController < ApplicationController
  def new
    user = User.new
  end

  def create
    # cherche s'il existe un utilisateur en base avec l’e-mail
    user = User.find_by(email: params[:email])

    # on vérifie si l'utilisateur existe bien ET si on arrive à l'authentifier (méthode bcrypt) avec le mot de passe 
    if user && user.authenticate(params[:password])
      log_in(user)
      
      if params[:remember]
        remember(user)
      end

      # redirige où tu veux, avec un flash ou pas
      flash.now[:notice] = 'You are logged in!'
      redirect_to gossip_project_home_path
  
    else
      flash.now[:alert] = 'Invalid email/password combination'
      render :new
    end
  end

  def destroy
    log_out(current_user)
    redirect_to gossip_project_home_path
  end
end
