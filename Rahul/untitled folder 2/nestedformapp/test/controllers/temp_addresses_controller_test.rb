require 'test_helper'

class TempAddressesControllerTest < ActionController::TestCase
  setup do
    @temp_address = temp_addresses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:temp_addresses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create temp_address" do
    assert_difference('TempAddress.count') do
      post :create, temp_address: { district: @temp_address.district, pincode: @temp_address.pincode, student_id: @temp_address.student_id, village: @temp_address.village }
    end

    assert_redirected_to temp_address_path(assigns(:temp_address))
  end

  test "should show temp_address" do
    get :show, id: @temp_address
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @temp_address
    assert_response :success
  end

  test "should update temp_address" do
    patch :update, id: @temp_address, temp_address: { district: @temp_address.district, pincode: @temp_address.pincode, student_id: @temp_address.student_id, village: @temp_address.village }
    assert_redirected_to temp_address_path(assigns(:temp_address))
  end

  test "should destroy temp_address" do
    assert_difference('TempAddress.count', -1) do
      delete :destroy, id: @temp_address
    end

    assert_redirected_to temp_addresses_path
  end
end
