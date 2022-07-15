class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|

      t.timestamps null: false
    end
  end
end
