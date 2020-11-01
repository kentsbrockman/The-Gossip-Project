class ApplicationController < ActionController::Base
  include SessionsHelper

  private
  def authenticate_user
    unless current_user
      redirect_to new_session_path
    end
  end
end
