class AdminsController < ApplicationController

  def index
  end

  def show

    @appointments = Appointment.all.order('Date ASC').order('Time ASC')
  end
end
