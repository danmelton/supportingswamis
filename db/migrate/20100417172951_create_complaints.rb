class CreateComplaints < ActiveRecord::Migration
  def self.up
    create_table :complaints do |t|
      t.text :description
      t.timestamps
    end
  end

  def self.down
    drop_table :complaints
  end
end
