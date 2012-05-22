class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
      t.string :title
      t.integer :number
      t.text :description
      t.string :category
      t.string :image
      t.timestamps
    end
  end

  def self.down
    drop_table :items
  end
end
