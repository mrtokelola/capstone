class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :medical_category_id
      t.text :description
      t.text :side_effects
      

      t.timestamps
    end
  end
end
