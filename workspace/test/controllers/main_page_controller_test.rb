require 'test_helper'

class MainPageControllerTest < ActionController::TestCase
  test "should get portfolio" do
    get :portfolio
    assert_response :success
  end

  test "should get epilogue" do
    get :epilogue
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

end
