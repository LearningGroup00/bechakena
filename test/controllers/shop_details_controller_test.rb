require "test_helper"

class ShopDetailsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get shop_details_index_url
    assert_response :success
  end

  test "should get show" do
    get shop_details_show_url
    assert_response :success
  end

  test "should get create" do
    get shop_details_create_url
    assert_response :success
  end

  test "should get edit" do
    get shop_details_edit_url
    assert_response :success
  end

  test "should get delete" do
    get shop_details_delete_url
    assert_response :success
  end
end
