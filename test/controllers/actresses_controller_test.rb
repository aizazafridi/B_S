require 'test_helper'

class ActressesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get actresses_index_url
    assert_response :success
  end

  test "should get show" do
    get actresses_show_url
    assert_response :success
  end

  test "should get new" do
    get actresses_new_url
    assert_response :success
  end

  test "should get edit" do
    get actresses_edit_url
    assert_response :success
  end

  test "should get delete" do
    get actresses_delete_url
    assert_response :success
  end

end
