class AddColumn < ActiveRecord::Migration[5.1]
  def change
    add_column :prescriptions, :dosage, :text
  end
end
