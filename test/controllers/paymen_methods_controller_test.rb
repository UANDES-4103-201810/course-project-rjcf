require 'test_helper'

class PaymenMethodsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @paymen_method = paymen_methods(:one)
  end

  test "should get index" do
    get paymen_methods_url
    assert_response :success
  end

  test "should get new" do
    get new_paymen_method_url
    assert_response :success
  end

  test "should create paymen_method" do
    assert_difference('PaymenMethod.count') do
      post paymen_methods_url, params: { paymen_method: { bank: @paymen_method.bank, card_number: @paymen_method.card_number, cardholder_name: @paymen_method.cardholder_name } }
    end

    assert_redirected_to paymen_method_url(PaymenMethod.last)
  end

  test "should show paymen_method" do
    get paymen_method_url(@paymen_method)
    assert_response :success
  end

  test "should get edit" do
    get edit_paymen_method_url(@paymen_method)
    assert_response :success
  end

  test "should update paymen_method" do
    patch paymen_method_url(@paymen_method), params: { paymen_method: { bank: @paymen_method.bank, card_number: @paymen_method.card_number, cardholder_name: @paymen_method.cardholder_name } }
    assert_redirected_to paymen_method_url(@paymen_method)
  end

  test "should destroy paymen_method" do
    assert_difference('PaymenMethod.count', -1) do
      delete paymen_method_url(@paymen_method)
    end

    assert_redirected_to paymen_methods_url
  end
end
