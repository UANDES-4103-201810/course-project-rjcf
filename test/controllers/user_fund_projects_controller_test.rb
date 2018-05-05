require 'test_helper'

class UserFundProjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_fund_project = user_fund_projects(:one)
  end

  test "should get index" do
    get user_fund_projects_url
    assert_response :success
  end

  test "should get new" do
    get new_user_fund_project_url
    assert_response :success
  end

  test "should create user_fund_project" do
    assert_difference('UserFundProject.count') do
      post user_fund_projects_url, params: { user_fund_project: { proyect_id: @user_fund_project.proyect_id, type: @user_fund_project.type, user_id: @user_fund_project.user_id } }
    end

    assert_redirected_to user_fund_project_url(UserFundProject.last)
  end

  test "should show user_fund_project" do
    get user_fund_project_url(@user_fund_project)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_fund_project_url(@user_fund_project)
    assert_response :success
  end

  test "should update user_fund_project" do
    patch user_fund_project_url(@user_fund_project), params: { user_fund_project: { proyect_id: @user_fund_project.proyect_id, type: @user_fund_project.type, user_id: @user_fund_project.user_id } }
    assert_redirected_to user_fund_project_url(@user_fund_project)
  end

  test "should destroy user_fund_project" do
    assert_difference('UserFundProject.count', -1) do
      delete user_fund_project_url(@user_fund_project)
    end

    assert_redirected_to user_fund_projects_url
  end
end
