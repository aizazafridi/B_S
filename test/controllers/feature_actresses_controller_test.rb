require 'test_helper'

class FeatureActressesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @feature_actress = feature_actresses(:one)
  end

  test "should get index" do
    get feature_actresses_url
    assert_response :success
  end

  test "should get new" do
    get new_feature_actress_url
    assert_response :success
  end

  test "should create feature_actress" do
    assert_difference('FeatureActress.count') do
      post feature_actresses_url, params: { feature_actress: { description: @feature_actress.description } }
    end

    assert_redirected_to feature_actress_url(FeatureActress.last)
  end

  test "should show feature_actress" do
    get feature_actress_url(@feature_actress)
    assert_response :success
  end

  test "should get edit" do
    get edit_feature_actress_url(@feature_actress)
    assert_response :success
  end

  test "should update feature_actress" do
    patch feature_actress_url(@feature_actress), params: { feature_actress: { description: @feature_actress.description } }
    assert_redirected_to feature_actress_url(@feature_actress)
  end

  test "should destroy feature_actress" do
    assert_difference('FeatureActress.count', -1) do
      delete feature_actress_url(@feature_actress)
    end

    assert_redirected_to feature_actresses_url
  end
end
