class CreateAppointments < ActiveRecord::Migration[5.0]
  def change
    create_table :appointments do |t|
      t.string :name
      t.string :email
      t.string :phone_number
      t.string :problem
      t.date :date
      t.time :time

      t.timestamps
    end
  end
end
