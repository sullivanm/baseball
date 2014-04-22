class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :playerID
      t.integer :birthYear
      t.string :nameFirst
      t.string :nameLast

      t.timestamps
    end
  end
end
