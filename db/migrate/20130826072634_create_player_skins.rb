class CreatePlayerSkins < ActiveRecord::Migration
  def change
    create_table :player_skins do |t|
      t.integer :player_id, :null => false
      t.integer :skin_id, :null => false
      t.integer :score, :null => false
      t.timestamps
    end
  end
end
