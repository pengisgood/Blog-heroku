class SessionsController < ApplicationController
  # GET /login
  def new
  end

  # POST /login
  def create
    user = User.find_by(email: params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to root_path
    else
      redirect_to login_path, notice: 'Username or password is not correct.'
    end
  end

  # DELETE /logout
  def destroy
    log_out
    redirect_to root_path
  end
end
