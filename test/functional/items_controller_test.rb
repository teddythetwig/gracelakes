require 'test_helper'

class ItemsControllerTest < ActionController::TestCase
  include Devise::TestHelpers
  fixtures :items
  test "should get seasonal" do
    get :seasonal
    assert_response :success
    assert_not_nil assigns(:items)
  end

  test "should get custom" do
    get :custom
    assert_response :success
    assert_not_nil assigns(:items)
  end

  test "should get plants" do
    get :plants
    assert_response :success
    assert_not_nil assigns(:items)
  end

  test "should get premier" do
    get :premier
    assert_response :success
    assert_not_nil assigns(:items)
  end

  test "should get show" do
    get(:show, {'id' => "GLF0000"})
    assert_response :success
    assert_not_nil assigns(:item)
  end
  
  test "should not get new without being signed in" do
    assert_nil assigns(:item)
  end
  
  test "should create item" do
    assert_difference('Item.count') do
      post :create, :item => {:title => "Spring Garden", :number => "GLF0001", :description => "Arrangement includes sweetly scented
pink hyacinths, candy pink tulips and
green dianthus, accented with ferns
and foliage in our green ceramic vase.
",:category => "seasonal",:image => fixture_file_upload("images/sample.jpg","image/jpg")}
    end
    assert_redirected_to item_path(assigns(:item))
    assert_not_nil assigns(:item)
  end
end
