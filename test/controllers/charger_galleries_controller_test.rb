require 'test_helper'

class ChargerGalleriesControllerTest < ActionController::TestCase
  setup do
    @charger_gallery = charger_galleries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:charger_galleries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create charger_gallery" do
    assert_difference('ChargerGallery.count') do
      post :create, charger_gallery: { charger_id: @charger_gallery.charger_id, image: @charger_gallery.image }
    end

    assert_redirected_to charger_gallery_path(assigns(:charger_gallery))
  end

  test "should show charger_gallery" do
    get :show, id: @charger_gallery
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @charger_gallery
    assert_response :success
  end

  test "should update charger_gallery" do
    patch :update, id: @charger_gallery, charger_gallery: { charger_id: @charger_gallery.charger_id, image: @charger_gallery.image }
    assert_redirected_to charger_gallery_path(assigns(:charger_gallery))
  end

  test "should destroy charger_gallery" do
    assert_difference('ChargerGallery.count', -1) do
      delete :destroy, id: @charger_gallery
    end

    assert_redirected_to charger_galleries_path
  end
end
