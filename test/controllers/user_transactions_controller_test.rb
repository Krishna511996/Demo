require 'test_helper'

class UserTransactionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_transaction = user_transactions(:one)
  end

  test "should get index" do
    get user_transactions_url
    assert_response :success
  end

  test "should get new" do
    get new_user_transaction_url
    assert_response :success
  end

  test "should create user_transaction" do
    assert_difference('UserTransaction.count') do
      post user_transactions_url, params: { user_transaction: { transaction_amount: @user_transaction.transaction_amount, transaction_date: @user_transaction.transaction_date, transaction_type: @user_transaction.transaction_type, user_id: @user_transaction.user_id } }
    end

    assert_redirected_to user_transaction_url(UserTransaction.last)
  end

  test "should show user_transaction" do
    get user_transaction_url(@user_transaction)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_transaction_url(@user_transaction)
    assert_response :success
  end

  test "should update user_transaction" do
    patch user_transaction_url(@user_transaction), params: { user_transaction: { transaction_amount: @user_transaction.transaction_amount, transaction_date: @user_transaction.transaction_date, transaction_type: @user_transaction.transaction_type, user_id: @user_transaction.user_id } }
    assert_redirected_to user_transaction_url(@user_transaction)
  end

  test "should destroy user_transaction" do
    assert_difference('UserTransaction.count', -1) do
      delete user_transaction_url(@user_transaction)
    end

    assert_redirected_to user_transactions_url
  end
end
