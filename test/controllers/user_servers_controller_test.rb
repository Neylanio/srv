require 'test_helper'

class UserServersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_server = user_servers(:one)
  end

  test "should get index" do
    get user_servers_url
    assert_response :success
  end

  test "should get new" do
    get new_user_server_url
    assert_response :success
  end

  test "should create user_server" do
    assert_difference('UserServer.count') do
      post user_servers_url, params: { user_server: { server_id: @user_server.server_id, user_id: @user_server.user_id } }
    end

    assert_redirected_to user_server_url(UserServer.last)
  end

  test "should show user_server" do
    get user_server_url(@user_server)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_server_url(@user_server)
    assert_response :success
  end

  test "should update user_server" do
    patch user_server_url(@user_server), params: { user_server: { server_id: @user_server.server_id, user_id: @user_server.user_id } }
    assert_redirected_to user_server_url(@user_server)
  end

  test "should destroy user_server" do
    assert_difference('UserServer.count', -1) do
      delete user_server_url(@user_server)
    end

    assert_redirected_to user_servers_url
  end
end
