class CreateGrams < ActiveRecord::Migration[5.2]
  def change
    create_table :grams do |t|
      t.text :announcement
      t.integer :user_id
      t.timestamps
    end
    add_index :grams, :user_id
  end
end
