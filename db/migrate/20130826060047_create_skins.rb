class CreateSkins < ActiveRecord::Migration
  def change
    create_table :skins do |t|
      t.integer :match_id, :null => false
      t.timestamps
    end
  end
end
