require 'test_helper'

class TweeetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tweeet = tweeets(:one)
  end

  test "should get index" do
    get tweeets_url
    assert_response :success
  end

  test "should get new" do
    get new_tweeet_url
    assert_response :success
  end

  test "should create tweeet" do
    assert_difference('Tweeet.count') do
      post tweeets_url, params: { tweeet: { tweeet: @tweeet.tweeet } }
    end

    assert_redirected_to tweeet_url(Tweeet.last)
  end

  test "should show tweeet" do
    get tweeet_url(@tweeet)
    assert_response :success
  end

  test "should get edit" do
    get edit_tweeet_url(@tweeet)
    assert_response :success
  end

  test "should update tweeet" do
    patch tweeet_url(@tweeet), params: { tweeet: { tweeet: @tweeet.tweeet } }
    assert_redirected_to tweeet_url(@tweeet)
  end

  test "should destroy tweeet" do
    assert_difference('Tweeet.count', -1) do
      delete tweeet_url(@tweeet)
    end

    assert_redirected_to tweeets_url
  end
end
