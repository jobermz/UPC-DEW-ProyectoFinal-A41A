class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :father_name
      t.string :mother_name
      t.string :name
      t.string :mail
      t.string :password
      t.references :sex
      t.references :person_type
      t.references :identity_document_type

      t.timestamps
    end
    add_index :users, :sex_id
    add_index :users, :person_type_id
    add_index :users, :identity_document_type_id
  end
end
