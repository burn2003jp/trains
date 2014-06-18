require 'test_helper'

class TrainNumbersControllerTest < ActionController::TestCase
  setup do
    @train_number = train_numbers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:train_numbers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create train_number" do
    assert_difference('TrainNumber.count') do
      post :create, train_number: {  }
    end

    assert_redirected_to train_number_path(assigns(:train_number))
  end

  test "should show train_number" do
    get :show, id: @train_number
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @train_number
    assert_response :success
  end

  test "should update train_number" do
    put :update, id: @train_number, train_number: {  }
    assert_redirected_to train_number_path(assigns(:train_number))
  end

  test "should destroy train_number" do
    assert_difference('TrainNumber.count', -1) do
      delete :destroy, id: @train_number
    end

    assert_redirected_to train_numbers_path
  end
end
