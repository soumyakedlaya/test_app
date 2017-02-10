class AddPhoneModelToQuote < ActiveRecord::Migration[5.0]
  def change
    add_column :quotes, :phone_model, :string
  end
end
