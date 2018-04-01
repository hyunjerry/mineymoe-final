class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.string :atitle
      t.string :btitle
      t.string :acontent
      t.string :bcontent

      t.timestamps
    end
  end
end
