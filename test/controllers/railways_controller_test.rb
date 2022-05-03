require 'test_helper'

class RailwaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @railway = railways(:one)
  end

  test "should get index" do
    get railways_url
    assert_response :success
  end

  test "should get new" do
    get new_railway_url
    assert_response :success
  end

  test "should create railway" do
    assert_difference('Railway.count') do
      post railways_url, params: { railway: { minute: @railway.minute, name: @railway.name, property_id: @railway.property_id, station: @railway.station } }
    end

    assert_redirected_to railway_url(Railway.last)
  end

  test "should show railway" do
    get railway_url(@railway)
    assert_response :success
  end

  test "should get edit" do
    get edit_railway_url(@railway)
    assert_response :success
  end

  test "should update railway" do
    patch railway_url(@railway), params: { railway: { minute: @railway.minute, name: @railway.name, property_id: @railway.property_id, station: @railway.station } }
    assert_redirected_to railway_url(@railway)
  end

  test "should destroy railway" do
    assert_difference('Railway.count', -1) do
      delete railway_url(@railway)
    end

    assert_redirected_to railways_url
  end
end
