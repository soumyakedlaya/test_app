class Appointment < ApplicationRecord

  def start_time
    self.date
  end
end
