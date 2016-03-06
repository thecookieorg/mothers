require 'test_helper'

class AccountsControllerTest < ActionController::TestCase
  setup do
    @account = accounts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:accounts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create account" do
    assert_difference('Account.count') do
      post :create, account: { address: @account.address, billing_posta_code: @account.billing_posta_code, card_number: @account.card_number, company_name: @account.company_name, cvc: @account.cvc, expiry: @account.expiry, first_name: @account.first_name, last_name: @account.last_name, name_on_card: @account.name_on_card, phone_number: @account.phone_number }
    end

    assert_redirected_to account_path(assigns(:account))
  end

  test "should show account" do
    get :show, id: @account
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @account
    assert_response :success
  end

  test "should update account" do
    patch :update, id: @account, account: { address: @account.address, billing_posta_code: @account.billing_posta_code, card_number: @account.card_number, company_name: @account.company_name, cvc: @account.cvc, expiry: @account.expiry, first_name: @account.first_name, last_name: @account.last_name, name_on_card: @account.name_on_card, phone_number: @account.phone_number }
    assert_redirected_to account_path(assigns(:account))
  end

  test "should destroy account" do
    assert_difference('Account.count', -1) do
      delete :destroy, id: @account
    end

    assert_redirected_to accounts_path
  end
end
