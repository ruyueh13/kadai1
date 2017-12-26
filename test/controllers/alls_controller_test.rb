require 'test_helper'

class AllsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @all = alls(:one)
  end

  test "should get index" do
    get alls_url
    assert_response :success
  end

  test "should get new" do
    get new_all_url
    assert_response :success
  end

  test "should create all" do
    assert_difference('All.count') do
      post alls_url, params: { all: { text: @all.text, top: @all.top } }
    end

    assert_redirected_to all_url(All.last)
  end

  test "should show all" do
    get all_url(@all)
    assert_response :success
  end

  test "should get edit" do
    get edit_all_url(@all)
    assert_response :success
  end

  test "should update all" do
    patch all_url(@all), params: { all: { text: @all.text, top: @all.top } }
    assert_redirected_to all_url(@all)
  end

  test "should destroy all" do
    assert_difference('All.count', -1) do
      delete all_url(@all)
    end

    assert_redirected_to alls_url
  end
end
