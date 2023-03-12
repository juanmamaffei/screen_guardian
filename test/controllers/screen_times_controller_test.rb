require "test_helper"

class ScreenTimesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @screen_time = screen_times(:one)
  end

  test "should get index" do
    get screen_times_url
    assert_response :success
  end

  test "should get new" do
    get new_screen_time_url
    assert_response :success
  end

  test "should create screen_time" do
    assert_difference("ScreenTime.count") do
      post screen_times_url, params: { screen_time: { app_name: @screen_time.app_name, duration: @screen_time.duration, screen_type: @screen_time.screen_type } }
    end

    assert_redirected_to screen_time_url(ScreenTime.last)
  end

  test "should show screen_time" do
    get screen_time_url(@screen_time)
    assert_response :success
  end

  test "should get edit" do
    get edit_screen_time_url(@screen_time)
    assert_response :success
  end

  test "should update screen_time" do
    patch screen_time_url(@screen_time), params: { screen_time: { app_name: @screen_time.app_name, duration: @screen_time.duration, screen_type: @screen_time.screen_type } }
    assert_redirected_to screen_time_url(@screen_time)
  end

  test "should destroy screen_time" do
    assert_difference("ScreenTime.count", -1) do
      delete screen_time_url(@screen_time)
    end

    assert_redirected_to screen_times_url
  end
end
