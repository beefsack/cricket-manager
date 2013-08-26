class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.date :match_date, :null => false
      t.timestamps
    end
  end
end
