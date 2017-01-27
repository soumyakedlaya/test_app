class AppointmentsController < ApplicationController
  def index
  end

  def create
    @appointment = Appointment.new(appointment_params)
    if @appointment.valid?
      @appointment.save
    else
      redirect_to "/"
    end

    # respond_to do |format|
    #   if @appointment.save
      # Tell the UserMailer to send a welcome email after save
        AppointmentMailer.sample_email(@appointment).deliver
        #
    #     format.html { redirect_to @appointment, notice: 'User was successfully created.' }
    #     format.json { render  :show, status: :created, location: @appointment }
    #   else
    #     format.html { render :new}
    #     format.json { render json: @appointment.errors, status: :unprocessable_entity }
    #   end
    # end
    redirect_to "/appointments/#{@appointment.id}"
  end

  def show
  end

  private
  def appointment_params
    params.require(:appointment).permit(:name, :email, :phone_number, :problem, :date, :time)
  end
end
