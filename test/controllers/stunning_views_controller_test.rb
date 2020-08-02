require 'test_helper'

class StunningViewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stunning_view = stunning_views(:one)
  end

  test "should get index" do
    get stunning_views_url
    assert_response :success
  end

  test "should get new" do
    get new_stunning_view_url
    assert_response :success
  end

  test "should create stunning_view" do
    assert_difference('StunningView.count') do
      post stunning_views_url, params: { stunning_view: { car_access: @stunning_view.car_access, description: @stunning_view.description, latitude: @stunning_view.latitude, longitude: @stunning_view.longitude, title: @stunning_view.title } }
    end

    assert_redirected_to stunning_view_url(StunningView.last)
  end

  test "should show stunning_view" do
    get stunning_view_url(@stunning_view)
    assert_response :success
  end

  test "should get edit" do
    get edit_stunning_view_url(@stunning_view)
    assert_response :success
  end

  test "should update stunning_view" do
    patch stunning_view_url(@stunning_view), params: { stunning_view: { car_access: @stunning_view.car_access, description: @stunning_view.description, latitude: @stunning_view.latitude, longitude: @stunning_view.longitude, title: @stunning_view.title } }
    assert_redirected_to stunning_view_url(@stunning_view)
  end

  test "should destroy stunning_view" do
    assert_difference('StunningView.count', -1) do
      delete stunning_view_url(@stunning_view)
    end

    assert_redirected_to stunning_views_url
  end
end
