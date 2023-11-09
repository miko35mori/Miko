class CreateLosts < ActiveRecord::Migration[6.1]
  def change
    create_table :losts do |t|
      t.string :animal_name
      t.string :genre
      t.string :color
      t.text :about

      t.timestamps
    end
  end
end
