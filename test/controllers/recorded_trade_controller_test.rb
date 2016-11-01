require 'test_helper'

class RecordedTradesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get recorded_trade_index_url
    assert_response :success
  end

  test "should get new" do
    get recorded_trade_new_url
    assert_response :success
  end

  test "should get create" do
    get recorded_trade_create_url
    assert_response :success
  end

  test "should get edit" do
    get recorded_trade_edit_url
    assert_response :success
  end

  test "should get show" do
    get recorded_trade_show_url
    assert_response :success
  end

  test "should get update" do
    get recorded_trade_update_url
    assert_response :success
  end

  test "should get destroy" do
    get recorded_trade_destroy_url
    assert_response :success
  end

end
