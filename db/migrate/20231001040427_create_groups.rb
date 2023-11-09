class CreateGroups < ActiveRecord::Migration[6.1]
  def change
    create_table :groups do |t|
      t.string :group_name
      t.string :address
      t.string :scale
      t.string :animal
      t.text :about

      t.timestamps
    end
  end
end
