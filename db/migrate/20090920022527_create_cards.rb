class CreateCards < ActiveRecord::Migration
  def self.up
	create_table :cards, :id => false do |t|
      t.string :uuid, :limit => 36, :primary => true, :null => false 
			t.string :name, :limit => 75
			t.string :passcode, :limit => 25
      t.string :heading, :limit => 144
      t.text :body, :limit => 1000
      t.boolean :published, :default => false
      t.integer :theme_id, :default => -1

      t.timestamps
    end
  end

  def self.down
    drop_table :cards
  end
end
