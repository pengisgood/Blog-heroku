class ApplicationController < ActionController::Base
  include SessionsHelper

	skip_before_action :verify_authenticity_token, :only => [:index, :show]
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session
end
