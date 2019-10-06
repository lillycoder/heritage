class AddUserIdColumnToTownhouses < ActiveRecord::Migration[5.2]
  def change
    add_column :townhouses, :user_id, :integer
    add_index :townhouses, :user_id
  end
end
