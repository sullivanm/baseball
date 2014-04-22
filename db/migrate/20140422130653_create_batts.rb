class CreateBatts < ActiveRecord::Migration
  def change
    create_table :batts do |t|
      t.string :playerID
      t.integer :yearID
      t.string :league
      t.string :teamID
      t.integer :G
      t.integer :AB
      t.integer :R
      t.integer :H
      t.integer :B2
      t.integer :B3
      t.integer :HR
      t.integer :RBI
      t.integer :SB
      t.integer :CS

      t.timestamps
    end
  end
end
