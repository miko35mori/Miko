class AddUserIdToLosts < ActiveRecord::Migration[6.1]
  def change
    add_column :losts, :user_id, :integer
  end
end
