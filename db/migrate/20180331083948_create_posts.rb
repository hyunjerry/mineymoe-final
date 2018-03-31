class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.integer :a
      t.integer :b
      t.string :user_name
      t.integer :total

      t.timestamps
    end
  end
end
