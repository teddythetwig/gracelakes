class ChangeImageToAttachment < ActiveRecord::Migration
  def self.up
    change_table :items do |t|
      t.has_attached_file :image
    end
  end

  def self.down
  end
end
