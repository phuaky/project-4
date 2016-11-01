require 'test_helper'

class AllSeafoodStocksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get all_seafood_stock_index_url
    assert_response :success
  end

  test "should get new" do
    get all_seafood_stock_new_url
    assert_response :success
  end

  test "should get create" do
    get all_seafood_stock_create_url
    assert_response :success
  end

  test "should get edit" do
    get all_seafood_stock_edit_url
    assert_response :success
  end

  test "should get show" do
    get all_seafood_stock_show_url
    assert_response :success
  end

  test "should get update" do
    get all_seafood_stock_update_url
    assert_response :success
  end

  test "should get destroy" do
    get all_seafood_stock_destroy_url
    assert_response :success
  end

end
