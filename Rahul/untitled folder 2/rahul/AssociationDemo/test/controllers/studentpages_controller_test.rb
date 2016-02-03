require 'test_helper'

class StudentpagesControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get create" do
    get :create
    assert_response :success
  end

  test "should get edit" do
    get :edit
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get destroy" do
    get :destroy
    assert_response :success
  end

  test "should get delete" do
    get :delete
    assert_response :success
  end

  test "should get find" do
    get :find
    assert_response :success
  end

  test "should get search" do
    get :search
    assert_response :success
  end

  test "should get success" do
    get :success
    assert_response :success
  end

  test "should get fail" do
    get :fail
    assert_response :success
  end

end
