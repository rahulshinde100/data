require 'test_helper'

class ProductControllerTest < ActionController::TestCase
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

  test "should get delete" do
    get :delete
    assert_response :success
  end

  test "should get destroy" do
    get :destroy
    assert_response :success
  end

  test "should get edit" do
    get :edit
    assert_response :success
  end

  test "should get modify" do
    get :modify
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get dislplay" do
    get :dislplay
    assert_response :success
  end

end
