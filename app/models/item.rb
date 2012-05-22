class Item < ActiveRecord::Base
  has_attached_file :image
  validates :image, :attachment_presence => true
  validates_with AttachmentPresenceValidator, :attributes => :image
  validates_presence_of :number,:title,:description,:category
  validates_uniqueness_of :title, :number
  def self.get_seasonal
    @items = self.find_all_by_category("seasonal")
  end
  def self.get_premier
    @items = self.find_all_by_category("premier")
  end
  def self.get_custom
    @items = self.find_all_by_category("custom")
  end
  def self.get_plants
    @items = self.find_all_by_category("plants")
  end
end
