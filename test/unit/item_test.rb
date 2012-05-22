require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  should have_attached_file(:image)
  should validate_attachment_presence(:image)
  should have_db_column(:number)
  should have_db_column(:title)
  should have_db_column(:description)
  should have_db_column(:category)
  should validate_presence_of(:number)
  should validate_presence_of(:title)
  should validate_presence_of(:description)
  should validate_presence_of(:category)
  should validate_uniqueness_of(:number)
  should validate_uniqueness_of(:title)
  test "gets seasonal" do
    @seasonal = Item.get_seasonal
    @seasonal.each do |i|
      if(i.category != "seasonal")
        assert false
      end
    end
    assert true
  end
  test "gets plants" do
    @seasonal = Item.get_plants
    @seasonal.each do |i|
      if(i.category != "plants")
        assert false
      end
    end
    assert true
  end
  test "gets custom" do
    @seasonal = Item.get_custom
    @seasonal.each do |i|
      if(i.category != "custom")
        assert false
      end
    end
    assert true
  end
  test "gets premier" do
    @seasonal = Item.get_premier
    @seasonal.each do |i|
      if(i.category != "premier")
        assert false
      end
    end
    assert true
  end
end
