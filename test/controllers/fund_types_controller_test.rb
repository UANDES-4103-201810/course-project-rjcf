require 'test_helper'

class FundTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fund_type = fund_types(:one)
  end

  test "should get index" do
    get fund_types_url
    assert_response :success
  end

  test "should get new" do
    get new_fund_type_url
    assert_response :success
  end

  test "should create fund_type" do
    assert_difference('FundType.count') do
      post fund_types_url, params: { fund_type: { amount: @fund_type.amount, type: @fund_type.type, username: @fund_type.username } }
    end

    assert_redirected_to fund_type_url(FundType.last)
  end

  test "should show fund_type" do
    get fund_type_url(@fund_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_fund_type_url(@fund_type)
    assert_response :success
  end

  test "should update fund_type" do
    patch fund_type_url(@fund_type), params: { fund_type: { amount: @fund_type.amount, type: @fund_type.type, username: @fund_type.username } }
    assert_redirected_to fund_type_url(@fund_type)
  end

  test "should destroy fund_type" do
    assert_difference('FundType.count', -1) do
      delete fund_type_url(@fund_type)
    end

    assert_redirected_to fund_types_url
  end
end
