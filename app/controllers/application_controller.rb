class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def initialize_flash
    if !flash[:login_errors]
      flash[:login_errors] = []
    end
  end

end
