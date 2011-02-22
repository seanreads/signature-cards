class CreateSignatures < ActiveRecord::Migration
  def self.up
	create_table :signatures, :id => false do |t|
      t.string :uuid, :limit => 36, :primary => true, :null => false 
      t.string :card_id, :null => false
      t.text :note, :limit => 1000
      t.string :name, :limit => 75
      t.integer :x, :null => false
      t.integer :y, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :signatures
  end
end
