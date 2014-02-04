require 'test_helper'

class FlashlightsControllerTest < ActionController::TestCase
  setup do
    @flashlight = flashlights(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:flashlights)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create flashlight" do
    assert_difference('Flashlight.count') do
      post :create, flashlight: { description: @flashlight.description, lumens: @flashlight.lumens, name: @flashlight.name, price: @flashlight.price, serie: @flashlight.serie }
    end

    assert_redirected_to flashlight_path(assigns(:flashlight))
  end

  test "should show flashlight" do
    get :show, id: @flashlight
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @flashlight
    assert_response :success
  end

  test "should update flashlight" do
    patch :update, id: @flashlight, flashlight: { description: @flashlight.description, lumens: @flashlight.lumens, name: @flashlight.name, price: @flashlight.price, serie: @flashlight.serie }
    assert_redirected_to flashlight_path(assigns(:flashlight))
  end

  test "should destroy flashlight" do
    assert_difference('Flashlight.count', -1) do
      delete :destroy, id: @flashlight
    end

    assert_redirected_to flashlights_path
  end
end
