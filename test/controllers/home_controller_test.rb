require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get home_index_url
    assert_response :success
  end

  test "should get browse_ac" do
    get home_browse_ac_url
    assert_response :success
  end

  test "should get browse_cl" do
    get home_browse_cl_url
    assert_response :success
  end

  test "should get clip" do
    get home_clip_url
    assert_response :success
  end

  test "should get actress" do
    get home_actress_url
    assert_response :success
  end

end
