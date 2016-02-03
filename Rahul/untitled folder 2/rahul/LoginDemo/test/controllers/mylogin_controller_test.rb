require 'test_helper'

class MyloginControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get create" do
    get :create
    assert_response :success
  end

  test "should get login" do
    get :login
    assert_response :success
  end

  test "should get fail" do
    get :fail
    assert_response :success
  end

  test "should get success" do
    get :success
    assert_response :success
  end

end
