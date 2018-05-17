class CreateFilms < ActiveRecord::Migration[5.2]
  def change
    create_table :films do |t|
      t.string :Title
      t.string :Genre
      t.integer :Year
      t.string :Synopis
      t.string :Picture

      t.timestamps
    end
  end
end
