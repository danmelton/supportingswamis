require 'test_helper'

class PersonalitiesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:personalities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create personality" do
    assert_difference('Personality.count') do
      post :create, :personality => { }
    end

    assert_redirected_to personality_path(assigns(:personality))
  end

  test "should show personality" do
    get :show, :id => personalities(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => personalities(:one).to_param
    assert_response :success
  end

  test "should update personality" do
    put :update, :id => personalities(:one).to_param, :personality => { }
    assert_redirected_to personality_path(assigns(:personality))
  end

  test "should destroy personality" do
    assert_difference('Personality.count', -1) do
      delete :destroy, :id => personalities(:one).to_param
    end

    assert_redirected_to personalities_path
  end
end
