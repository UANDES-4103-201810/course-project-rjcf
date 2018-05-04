require 'test_helper'

class UseRolesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @use_role = use_roles(:one)
  end

  test "should get index" do
    get use_roles_url
    assert_response :success
  end

  test "should get new" do
    get new_use_role_url
    assert_response :success
  end

  test "should create use_role" do
    assert_difference('UseRole.count') do
      post use_roles_url, params: { use_role: { type: @use_role.type, user: @use_role.user } }
    end

    assert_redirected_to use_role_url(UseRole.last)
  end

  test "should show use_role" do
    get use_role_url(@use_role)
    assert_response :success
  end

  test "should get edit" do
    get edit_use_role_url(@use_role)
    assert_response :success
  end

  test "should update use_role" do
    patch use_role_url(@use_role), params: { use_role: { type: @use_role.type, user: @use_role.user } }
    assert_redirected_to use_role_url(@use_role)
  end

  test "should destroy use_role" do
    assert_difference('UseRole.count', -1) do
      delete use_role_url(@use_role)
    end

    assert_redirected_to use_roles_url
  end
end
