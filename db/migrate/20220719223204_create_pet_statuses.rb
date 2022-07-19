class CreatePetStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :pet_statuses do |t|


      t.timestamps null: false
    end
  end
end
