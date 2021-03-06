class AppointmentsController < ApplicationController
  def index
      @phone_model = Device.find(params[:id])
      # binding.pry
  end

  def create
    @appointment = Appointment.create(appointment_params)
    # binding.pry
    # if @appointment.valid?
    #   @appointment.save
      AppointmentMailer.sample_email(@appointment).deliver
      redirect_to "/appointments/#{@appointment.id}"
    # else
    #   redirect_to "/"
    # end

    # respond_to do |format|
    #   if @appointment.save
      # Tell the UserMailer to send a welcome email after save
        #
    #     format.html { redirect_to @appointment, notice: 'User was successfully created.' }
    #     format.json { render  :show, status: :created, location: @appointment }
    #   else
    #     format.html { render :new}
    #     format.json { render json: @appointment.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  def show
  end

  private
  def appointment_params
    params.require(:appointment).permit(:name, :email, :phone_number, :phone_model, :problem, :date, :time)
    # binding.pry

  end
end
