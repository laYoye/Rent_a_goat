require 'test_helper'

class HerdsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get herds_index_url
    assert_response :success
  end

  test "should get show" do
    get herds_show_url
    assert_response :success
  end

  test "should get new" do
    get herds_new_url
    assert_response :success
  end

  test "should get create" do
    get herds_create_url
    assert_response :success
  end

end
