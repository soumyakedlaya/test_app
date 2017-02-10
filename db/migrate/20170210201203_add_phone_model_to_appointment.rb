class AddPhoneModelToAppointment < ActiveRecord::Migration[5.0]
  def change
    add_column :appointments, :phone_model, :string
  end
end
