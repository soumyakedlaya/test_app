class CreateQuotes < ActiveRecord::Migration[5.0]
  def change
    create_table :quotes do |t|
      t.string :name
      t.string :email
      t.string :phone_number
      t.string :problem

      t.timestamps
    end
  end
end
