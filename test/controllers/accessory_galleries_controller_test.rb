require 'test_helper'

class AccessoryGalleriesControllerTest < ActionController::TestCase
  setup do
    @accessory_gallery = accessory_galleries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:accessory_galleries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create accessory_gallery" do
    assert_difference('AccessoryGallery.count') do
      post :create, accessory_gallery: { accessory_id: @accessory_gallery.accessory_id, image: @accessory_gallery.image }
    end

    assert_redirected_to accessory_gallery_path(assigns(:accessory_gallery))
  end

  test "should show accessory_gallery" do
    get :show, id: @accessory_gallery
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @accessory_gallery
    assert_response :success
  end

  test "should update accessory_gallery" do
    patch :update, id: @accessory_gallery, accessory_gallery: { accessory_id: @accessory_gallery.accessory_id, image: @accessory_gallery.image }
    assert_redirected_to accessory_gallery_path(assigns(:accessory_gallery))
  end

  test "should destroy accessory_gallery" do
    assert_difference('AccessoryGallery.count', -1) do
      delete :destroy, id: @accessory_gallery
    end

    assert_redirected_to accessory_galleries_path
  end
end
