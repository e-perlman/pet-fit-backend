class CreateOwners < ActiveRecord::Migration[5.2]
  def change
    create_table :owners do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :email
      t.timestamp :created_at
      t.timestamp :updated_at
      t.timestamps null: false
    end
  end
end

#for a belongs to table
# t.references :user, foreign_key: {on_delete: :cascade}
# on deletion for the main object (user) all the connected models with be deleted
# use for pets info, deletion will be cascaded down
#will be indexed in schema, indexing speeds up the querying process
# macro: a method that creates methods for you
#any macro is a class method
