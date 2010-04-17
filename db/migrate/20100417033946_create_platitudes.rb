class CreatePlatitudes < ActiveRecord::Migration
  def self.up
    create_table :platitudes do |t|
      t.string :platitude
      t.timestamps
    end
  end

  def self.down
    drop_table :platitudes
  end
end
