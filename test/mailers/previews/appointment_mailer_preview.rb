# Preview all emails at http://localhost:3000/rails/mailers/appointment_mailer
class AppointmentMailerPreview < ActionMailer::Preview
  def sample_email
    AppointmentMailer.sample_email(Appointment.first)
  end
end
