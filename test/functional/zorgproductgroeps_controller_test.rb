require 'test_helper'

class ZorgproductgroepsControllerTest < ActionController::TestCase
  setup do
    @zorgproductgroep = zorgproductgroeps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:zorgproductgroeps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create zorgproductgroep" do
    assert_difference('Zorgproductgroep.count') do
      post :create, zorgproductgroep: @zorgproductgroep.attributes
    end

    assert_redirected_to zorgproductgroep_path(assigns(:zorgproductgroep))
  end

  test "should show zorgproductgroep" do
    get :show, id: @zorgproductgroep.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @zorgproductgroep.to_param
    assert_response :success
  end

  test "should update zorgproductgroep" do
    put :update, id: @zorgproductgroep.to_param, zorgproductgroep: @zorgproductgroep.attributes
    assert_redirected_to zorgproductgroep_path(assigns(:zorgproductgroep))
  end

  test "should destroy zorgproductgroep" do
    assert_difference('Zorgproductgroep.count', -1) do
      delete :destroy, id: @zorgproductgroep.to_param
    end

    assert_redirected_to zorgproductgroeps_path
  end
end
