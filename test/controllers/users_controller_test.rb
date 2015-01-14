require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  before do
      let(:user) { User.new(name: 'blah', password: 'hahaha') }
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end
 
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end
end