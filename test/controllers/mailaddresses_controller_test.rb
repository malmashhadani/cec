require 'test_helper'

class MailaddressesControllerTest < ActionController::TestCase
  setup do
    @mailaddress = mailaddresses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mailaddresses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mailaddress" do
    assert_difference('Mailaddress.count') do
      post :create, mailaddress: { address: @mailaddress.address, city: @mailaddress.city, mailadd_id: @mailaddress.mailadd_id, project_id: @mailaddress.project_id, state: @mailaddress.state, zipcode: @mailaddress.zipcode }
    end

    assert_redirected_to mailaddress_path(assigns(:mailaddress))
  end

  test "should show mailaddress" do
    get :show, id: @mailaddress
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mailaddress
    assert_response :success
  end

  test "should update mailaddress" do
    patch :update, id: @mailaddress, mailaddress: { address: @mailaddress.address, city: @mailaddress.city, mailadd_id: @mailaddress.mailadd_id, project_id: @mailaddress.project_id, state: @mailaddress.state, zipcode: @mailaddress.zipcode }
    assert_redirected_to mailaddress_path(assigns(:mailaddress))
  end

  test "should destroy mailaddress" do
    assert_difference('Mailaddress.count', -1) do
      delete :destroy, id: @mailaddress
    end

    assert_redirected_to mailaddresses_path
  end
end
