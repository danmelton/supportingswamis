class CreatePersonalities < ActiveRecord::Migration
  def self.up
    create_table :personalities do |t|
      t.string :name
      t.string :image

      t.timestamps
    end
  end

  def self.down
    drop_table :personalities
  end
end
