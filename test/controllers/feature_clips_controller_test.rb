require 'test_helper'

class FeatureClipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @feature_clip = feature_clips(:one)
  end

  test "should get index" do
    get feature_clips_url
    assert_response :success
  end

  test "should get new" do
    get new_feature_clip_url
    assert_response :success
  end

  test "should create feature_clip" do
    assert_difference('FeatureClip.count') do
      post feature_clips_url, params: { feature_clip: { description: @feature_clip.description } }
    end

    assert_redirected_to feature_clip_url(FeatureClip.last)
  end

  test "should show feature_clip" do
    get feature_clip_url(@feature_clip)
    assert_response :success
  end

  test "should get edit" do
    get edit_feature_clip_url(@feature_clip)
    assert_response :success
  end

  test "should update feature_clip" do
    patch feature_clip_url(@feature_clip), params: { feature_clip: { description: @feature_clip.description } }
    assert_redirected_to feature_clip_url(@feature_clip)
  end

  test "should destroy feature_clip" do
    assert_difference('FeatureClip.count', -1) do
      delete feature_clip_url(@feature_clip)
    end

    assert_redirected_to feature_clips_url
  end
end
