require 'test_helper'

class OperationNumbersControllerTest < ActionController::TestCase
  setup do
    @operation_number = operation_numbers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:operation_numbers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create operation_number" do
    assert_difference('OperationNumber.count') do
      post :create, operation_number: {  }
    end

    assert_redirected_to operation_number_path(assigns(:operation_number))
  end

  test "should show operation_number" do
    get :show, id: @operation_number
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @operation_number
    assert_response :success
  end

  test "should update operation_number" do
    put :update, id: @operation_number, operation_number: {  }
    assert_redirected_to operation_number_path(assigns(:operation_number))
  end

  test "should destroy operation_number" do
    assert_difference('OperationNumber.count', -1) do
      delete :destroy, id: @operation_number
    end

    assert_redirected_to operation_numbers_path
  end
end
