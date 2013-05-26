class CreateLocals < ActiveRecord::Migration
  def change
    create_table :locals do |t|
      t.string :description
      t.string :address
      t.string :phone
      t.string :map_url
      t.references :district

      t.timestamps
    end
    add_index :locals, :district_id
  end
end
