class SessionsController < ApplicationController
  # GET /login
  def new
  end

  # POST /login
  def create
    user = User.find_by(email: params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to '/'
    else
      render 'new'
    end
  end

  # DELETE /logout
  def destroy
  end
end
