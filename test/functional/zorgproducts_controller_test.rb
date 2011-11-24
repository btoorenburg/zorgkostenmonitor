require 'test_helper'

class ZorgproductsControllerTest < ActionController::TestCase
  setup do
    @zorgproduct = zorgproducts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:zorgproducts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create zorgproduct" do
    assert_difference('Zorgproduct.count') do
      post :create, zorgproduct: @zorgproduct.attributes
    end

    assert_redirected_to zorgproduct_path(assigns(:zorgproduct))
  end

  test "should show zorgproduct" do
    get :show, id: @zorgproduct.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @zorgproduct.to_param
    assert_response :success
  end

  test "should update zorgproduct" do
    put :update, id: @zorgproduct.to_param, zorgproduct: @zorgproduct.attributes
    assert_redirected_to zorgproduct_path(assigns(:zorgproduct))
  end

  test "should destroy zorgproduct" do
    assert_difference('Zorgproduct.count', -1) do
      delete :destroy, id: @zorgproduct.to_param
    end

    assert_redirected_to zorgproducts_path
  end
end
