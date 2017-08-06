class CreateMedicalCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :medical_categories do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
