class CreateMenbers < ActiveRecord::Migration
  def change
    create_table :menbers do |t|
      t.string :student
      t.string :group

      t.timestamps
    end
  end
end
