class AdminsController < ApplicationController

  def index
  end

  def show
    @appointments = Appointment.where("date = ?", Date.today)
    # @appointments = Appointment.all
  end
end
