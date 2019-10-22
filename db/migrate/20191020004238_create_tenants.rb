class CreateTenants < ActiveRecord::Migration[5.2]
  def change
    create_table :tenants do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :email
      t.string :household
      t.string :end_of_lease
      t.string :emergency
      t.integer :townhouse_id
      t.timestamps
    end
    add_index :tenants, :townhouse_id
  end
end
