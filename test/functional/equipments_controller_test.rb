require 'test_helper'

class EquipmentsControllerTest < ActionController::TestCase
  test "should get spots" do
    get :spots
    assert_response :success
  end

  test "should get reviews" do
    get :reviews
    assert_response :success
  end

end
