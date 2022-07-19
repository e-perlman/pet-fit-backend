class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.string :name 
      t.string :species
      t.integer :age
      t.string :sex
      t.string :breed
      t.string :color
      t.integer :weight
      t.timestamp :created_at
      t.timestamp :updated_at
      t.timestamps null: false
    end
  end
end
