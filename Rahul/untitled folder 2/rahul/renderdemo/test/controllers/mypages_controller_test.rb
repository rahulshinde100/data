require 'test_helper'

class MypagesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get recallfun" do
    get :recallfun
    assert_response :success
  end

end
