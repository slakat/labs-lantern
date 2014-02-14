require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get contact" do
    get :contact
    assert_response :success
  end

  test "should get companies" do
    get :companies
    assert_response :success
  end

end
