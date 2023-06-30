class ApplicationController < ActionController::Base
include SessionsHelper
before_action :login_required

  def login_required
    redirect_to sessions_new_path unless current_user
  end
end
