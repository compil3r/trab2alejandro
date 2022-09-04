require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  # test "should get pages" do
  #   get home_pages_url
  #   assert_response :success
  # end
  setup do

    sign_in users(:one)
    
  end


  test "should get users" do
    get usuarios_url
    assert_response :success
  end
end
