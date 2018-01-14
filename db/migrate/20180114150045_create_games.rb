class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.integer :player_A
      t.integer :player_B
      t.integer :life_A
      t.integer :life_B
      t.integer :winner
      t.string :status

      t.timestamps
    end
  end
end
