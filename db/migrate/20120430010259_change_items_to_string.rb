class ChangeItemsToString < ActiveRecord::Migration
  def self.up
    change_table :items do |t|
      t.change :number, :string
    end
  end

  def self.down
  end
end
