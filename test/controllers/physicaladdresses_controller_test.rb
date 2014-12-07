require 'test_helper'

class PhysicaladdressesControllerTest < ActionController::TestCase
  setup do
    @physicaladdress = physicaladdresses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:physicaladdresses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create physicaladdress" do
    assert_difference('Physicaladdress.count') do
      post :create, physicaladdress: { address: @physicaladdress.address, city: @physicaladdress.city, phyadd_id: @physicaladdress.phyadd_id, project_id: @physicaladdress.project_id, state: @physicaladdress.state, zipcode: @physicaladdress.zipcode }
    end

    assert_redirected_to physicaladdress_path(assigns(:physicaladdress))
  end

  test "should show physicaladdress" do
    get :show, id: @physicaladdress
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @physicaladdress
    assert_response :success
  end

  test "should update physicaladdress" do
    patch :update, id: @physicaladdress, physicaladdress: { address: @physicaladdress.address, city: @physicaladdress.city, phyadd_id: @physicaladdress.phyadd_id, project_id: @physicaladdress.project_id, state: @physicaladdress.state, zipcode: @physicaladdress.zipcode }
    assert_redirected_to physicaladdress_path(assigns(:physicaladdress))
  end

  test "should destroy physicaladdress" do
    assert_difference('Physicaladdress.count', -1) do
      delete :destroy, id: @physicaladdress
    end

    assert_redirected_to physicaladdresses_path
  end
end
