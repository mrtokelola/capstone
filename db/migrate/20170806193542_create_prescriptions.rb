class CreatePrescriptions < ActiveRecord::Migration[5.1]
  def change
    create_table :prescriptions do |t|
      t.integer :user_id
      t.integer :product_id
      t.integer :amount
      t.text :dosage

      t.timestamps
    end
  end
end
