class AddScheduler < ActiveRecord::Migration[5.1]
  def change
    add_column :prescriptions, :schedule, :integer
  end
end
