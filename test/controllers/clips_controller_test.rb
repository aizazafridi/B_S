require 'test_helper'

class ClipsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get clips_index_url
    assert_response :success
  end

  test "should get show" do
    get clips_show_url
    assert_response :success
  end

  test "should get new" do
    get clips_new_url
    assert_response :success
  end

  test "should get edit" do
    get clips_edit_url
    assert_response :success
  end

  test "should get delete" do
    get clips_delete_url
    assert_response :success
  end

end
