require 'test_helper'

class AdminsProjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admins_project = admins_projects(:one)
  end

  test "should get index" do
    get admins_projects_url
    assert_response :success
  end

  test "should get new" do
    get new_admins_project_url
    assert_response :success
  end

  test "should create admins_project" do
    assert_difference('AdminsProject.count') do
      post admins_projects_url, params: { admins_project: {  } }
    end

    assert_redirected_to admins_project_url(AdminsProject.last)
  end

  test "should show admins_project" do
    get admins_project_url(@admins_project)
    assert_response :success
  end

  test "should get edit" do
    get edit_admins_project_url(@admins_project)
    assert_response :success
  end

  test "should update admins_project" do
    patch admins_project_url(@admins_project), params: { admins_project: {  } }
    assert_redirected_to admins_project_url(@admins_project)
  end

  test "should destroy admins_project" do
    assert_difference('AdminsProject.count', -1) do
      delete admins_project_url(@admins_project)
    end

    assert_redirected_to admins_projects_url
  end
end
