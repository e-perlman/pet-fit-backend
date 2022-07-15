class CreatePetOwnerships < ActiveRecord::Migration[5.2]
  def change
    create_table :pet_ownerships do |t|
      t.references :owner, foreign_key: {on_delete: :cascade}
      t.references :pet, foreign_key: {on_delete: :cascade}
      t.timestamp :created_at
      t.timestamps null: false
    end
  end
end
