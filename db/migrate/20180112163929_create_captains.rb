class CreateCaptains < ActiveRecord::Migration[5.1]
  def change
    create_table :captains do |t|
      t.string :name
      t.string :description
      t.integer :life_point
      t.integer :attack_power
      t.string :fav_attack
      t.integer :wins
      t.integer :looses

      t.timestamps
    end
  end
end
