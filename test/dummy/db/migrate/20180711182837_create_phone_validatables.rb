class CreatePhoneValidatables < ActiveRecord::Migration[5.2]
  def change
    create_table :phone_validatables do |t|
      t.string :phone
    end
  end
end
