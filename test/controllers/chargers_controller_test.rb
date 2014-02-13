require 'test_helper'

class ChargersControllerTest < ActionController::TestCase
  setup do
    @charger = chargers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:chargers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create charger" do
    assert_difference('Charger.count') do
      post :create, charger: { description: @charger.description, features: @charger.features, name: @charger.name, price: @charger.price }
    end

    assert_redirected_to charger_path(assigns(:charger))
  end

  test "should show charger" do
    get :show, id: @charger
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @charger
    assert_response :success
  end

  test "should update charger" do
    patch :update, id: @charger, charger: { description: @charger.description, features: @charger.features, name: @charger.name, price: @charger.price }
    assert_redirected_to charger_path(assigns(:charger))
  end

  test "should destroy charger" do
    assert_difference('Charger.count', -1) do
      delete :destroy, id: @charger
    end

    assert_redirected_to chargers_path
  end
end
