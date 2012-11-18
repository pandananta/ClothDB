require 'test_helper'

class DressParsersControllerTest < ActionController::TestCase
  setup do
    @dress_parser = dress_parsers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dress_parsers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dress_parser" do
    assert_difference('DressParser.count') do
      post :create, dress_parser: {  }
    end

    assert_redirected_to dress_parser_path(assigns(:dress_parser))
  end

  test "should show dress_parser" do
    get :show, id: @dress_parser
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dress_parser
    assert_response :success
  end

  test "should update dress_parser" do
    put :update, id: @dress_parser, dress_parser: {  }
    assert_redirected_to dress_parser_path(assigns(:dress_parser))
  end

  test "should destroy dress_parser" do
    assert_difference('DressParser.count', -1) do
      delete :destroy, id: @dress_parser
    end

    assert_redirected_to dress_parsers_path
  end
end
