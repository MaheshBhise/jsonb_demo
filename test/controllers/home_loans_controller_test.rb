require 'test_helper'

class HomeLoansControllerTest < ActionController::TestCase
  setup do
    @home_loan = home_loans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:home_loans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create home_loan" do
    assert_difference('HomeLoan.count') do
      post :create, home_loan: { data: @home_loan.data }
    end

    assert_redirected_to home_loan_path(assigns(:home_loan))
  end

  test "should show home_loan" do
    get :show, id: @home_loan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @home_loan
    assert_response :success
  end

  test "should update home_loan" do
    patch :update, id: @home_loan, home_loan: { data: @home_loan.data }
    assert_redirected_to home_loan_path(assigns(:home_loan))
  end

  test "should destroy home_loan" do
    assert_difference('HomeLoan.count', -1) do
      delete :destroy, id: @home_loan
    end

    assert_redirected_to home_loans_path
  end
end
