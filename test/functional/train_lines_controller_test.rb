require 'test_helper'

class TrainLinesControllerTest < ActionController::TestCase
  setup do
    @train_line = train_lines(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:train_lines)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create train_line" do
    assert_difference('TrainLine.count') do
      post :create, train_line: {  }
    end

    assert_redirected_to train_line_path(assigns(:train_line))
  end

  test "should show train_line" do
    get :show, id: @train_line
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @train_line
    assert_response :success
  end

  test "should update train_line" do
    put :update, id: @train_line, train_line: {  }
    assert_redirected_to train_line_path(assigns(:train_line))
  end

  test "should destroy train_line" do
    assert_difference('TrainLine.count', -1) do
      delete :destroy, id: @train_line
    end

    assert_redirected_to train_lines_path
  end
end
