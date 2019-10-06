class CreateTownhouses < ActiveRecord::Migration[5.2]
  def change
    create_table :townhouses do |t|
      t.string :name
      t.string :address
      t.string :primaryphone 
      t.string :secondaryphone
      t.string :primaryemail
      t.string :secondaryemail
      t.string :emergency
      t.text :comment
      t.timestamps
    end
  end
end
