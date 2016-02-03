require 'test_helper'

class Recipe1sControllerTest < ActionController::TestCase
  setup do
    @recipe1 = recipe1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:recipe1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create recipe1" do
    assert_difference('Recipe1.count') do
      post :create, recipe1: { instruction: @recipe1.instruction, title: @recipe1.title }
    end

    assert_redirected_to recipe1_path(assigns(:recipe1))
  end

  test "should show recipe1" do
    get :show, id: @recipe1
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @recipe1
    assert_response :success
  end

  test "should update recipe1" do
    patch :update, id: @recipe1, recipe1: { instruction: @recipe1.instruction, title: @recipe1.title }
    assert_redirected_to recipe1_path(assigns(:recipe1))
  end

  test "should destroy recipe1" do
    assert_difference('Recipe1.count', -1) do
      delete :destroy, id: @recipe1
    end

    assert_redirected_to recipe1s_path
  end
end
