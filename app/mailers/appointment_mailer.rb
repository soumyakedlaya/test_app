class AppointmentMailer < ApplicationMailer
  default from: 'hashtagphonerepairtest@gmail.com'

  def sample_email(appt)
    @appointment = appt
    email_with_name = %("#{@appointment.name}" <#{@appointment.email}>)
    mail(to: email_with_name, subject: 'Your appointment with HashTagPhoneRepair has been confirmed ')
  end
end
