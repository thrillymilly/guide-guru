class SessionController < ApplicationController
  def create
    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
    end

    redirect_to :root
  end

  def destroy
    log_out
  end
end