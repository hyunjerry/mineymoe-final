class CreateTmpdatabasaes < ActiveRecord::Migration[5.1]
  def change
    create_table :tmpdatabasaes do |t|
      t.string :name

      t.timestamps
    end
  end
end
