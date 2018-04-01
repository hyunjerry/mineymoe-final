class CreateLikes < ActiveRecord::Migration[5.1]
  def change
    create_table :likes do |t|
      t.integer :vpost_id
      t.string :user_id

      t.timestamps
    end
  end
end
