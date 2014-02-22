require 'test_helper'

class FlashlightGalleriesControllerTest < ActionController::TestCase
  setup do
    @flashlight_gallery = flashlight_galleries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:flashlight_galleries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create flashlight_gallery" do
    assert_difference('FlashlightGallery.count') do
      post :create, flashlight_gallery: { flashlight_id: @flashlight_gallery.flashlight_id, image: @flashlight_gallery.image }
    end

    assert_redirected_to flashlight_gallery_path(assigns(:flashlight_gallery))
  end

  test "should show flashlight_gallery" do
    get :show, id: @flashlight_gallery
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @flashlight_gallery
    assert_response :success
  end

  test "should update flashlight_gallery" do
    patch :update, id: @flashlight_gallery, flashlight_gallery: { flashlight_id: @flashlight_gallery.flashlight_id, image: @flashlight_gallery.image }
    assert_redirected_to flashlight_gallery_path(assigns(:flashlight_gallery))
  end

  test "should destroy flashlight_gallery" do
    assert_difference('FlashlightGallery.count', -1) do
      delete :destroy, id: @flashlight_gallery
    end

    assert_redirected_to flashlight_galleries_path
  end
end
