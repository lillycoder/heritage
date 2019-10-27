class CreateFeedbacks < ActiveRecord::Migration[5.2]
  def change
    create_table :feedbacks do |t|
      t.text :message
      t.integer :user_id
      t.integer :townhouse_id
      t.timestamps
    end
    add_index :feedbacks, :user_id
    add_index :feedbacks, :townhouse_id
  end
end
