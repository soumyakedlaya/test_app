class SessionsController < ApplicationController

  def create
    admin = Admin.find_by_email(params[:Email])
    if admin && admin.authenticate(params[:Password])
      session[:admin_id] = admin.id
      redirect_to "/admins/#{admin.id}"
    else
      initialize_flash
      flash[:login_errors] << "This is not an existing admin account"
      redirect_to "/admins"
    end
  end
end
