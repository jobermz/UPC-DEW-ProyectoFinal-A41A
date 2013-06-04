class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :name
      t.references :menber
      t.references :genre

      t.timestamps
    end
    add_index :groups, :menber_id
    add_index :groups, :genre_id
  end
end
