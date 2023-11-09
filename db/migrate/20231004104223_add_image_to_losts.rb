class AddImageToLosts < ActiveRecord::Migration[6.1]
  def change
    add_column :losts, :image, :string
  end
end
