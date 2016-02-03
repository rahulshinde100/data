require 'test_helper'

class ImagedemosControllerTest < ActionController::TestCase
  setup do
    @imagedemo = imagedemos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:imagedemos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create imagedemo" do
    assert_difference('Imagedemo.count') do
      post :create, imagedemo: { fname: @imagedemo.fname, lname: @imagedemo.lname }
    end

    assert_redirected_to imagedemo_path(assigns(:imagedemo))
  end

  test "should show imagedemo" do
    get :show, id: @imagedemo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @imagedemo
    assert_response :success
  end

  test "should update imagedemo" do
    patch :update, id: @imagedemo, imagedemo: { fname: @imagedemo.fname, lname: @imagedemo.lname }
    assert_redirected_to imagedemo_path(assigns(:imagedemo))
  end

  test "should destroy imagedemo" do
    assert_difference('Imagedemo.count', -1) do
      delete :destroy, id: @imagedemo
    end

    assert_redirected_to imagedemos_path
  end
end
