require 'test_helper'

class Message1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @message1 = message1s(:one)
  end

  test "should get index" do
    get message1s_url
    assert_response :success
  end

  test "should get new" do
    get new_message1_url
    assert_response :success
  end

  test "should create message1" do
    assert_difference('Message1.count') do
      post message1s_url, params: { message1: { message1: @message1.message1, title1: @message1.title1 } }
    end

    assert_redirected_to message1_url(Message1.last)
  end

  test "should show message1" do
    get message1_url(@message1)
    assert_response :success
  end

  test "should get edit" do
    get edit_message1_url(@message1)
    assert_response :success
  end

  test "should update message1" do
    patch message1_url(@message1), params: { message1: { message1: @message1.message1, title1: @message1.title1 } }
    assert_redirected_to message1_url(@message1)
  end

  test "should destroy message1" do
    assert_difference('Message1.count', -1) do
      delete message1_url(@message1)
    end

    assert_redirected_to message1s_url
  end
end
