require 'test_helper'

class MysubjectsControllerTest < ActionController::TestCase
  setup do
    @mysubject = mysubjects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mysubjects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mysubject" do
    assert_difference('Mysubject.count') do
      post :create, mysubject: { my_subjects: @mysubject.my_subjects }
    end

    assert_redirected_to mysubject_path(assigns(:mysubject))
  end

  test "should show mysubject" do
    get :show, id: @mysubject
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mysubject
    assert_response :success
  end

  test "should update mysubject" do
    patch :update, id: @mysubject, mysubject: { my_subjects: @mysubject.my_subjects }
    assert_redirected_to mysubject_path(assigns(:mysubject))
  end

  test "should destroy mysubject" do
    assert_difference('Mysubject.count', -1) do
      delete :destroy, id: @mysubject
    end

    assert_redirected_to mysubjects_path
  end
end
