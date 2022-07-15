class CreateOwners < ActiveRecord::Migration[5.2]
  def change
    create_table :owners do |t|
      t.string :email
      t.string :password_digest
      t.string :name

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
