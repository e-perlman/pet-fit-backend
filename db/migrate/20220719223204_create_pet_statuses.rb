class CreatePetStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :pet_statuses do |t|
      t.string :food_type
      t.integer :cups_of_food_daily
      t.integer :daily_exercise_minutes
      t.integer :hours_of_sleep
      t.datetime :most_recent_vet_visit
      t.references :pet, foreign_key: {on_delete: :cascade}
      t.timestamps null: false
    end
  end
end
