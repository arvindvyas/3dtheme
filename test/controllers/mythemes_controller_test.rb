require 'test_helper'

class MythemesControllerTest < ActionController::TestCase
  setup do
    @mytheme = mythemes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mythemes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mytheme" do
    assert_difference('Mytheme.count') do
      post :create, mytheme: { name: @mytheme.name }
    end

    assert_redirected_to mytheme_path(assigns(:mytheme))
  end

  test "should show mytheme" do
    get :show, id: @mytheme
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mytheme
    assert_response :success
  end

  test "should update mytheme" do
    patch :update, id: @mytheme, mytheme: { name: @mytheme.name }
    assert_redirected_to mytheme_path(assigns(:mytheme))
  end

  test "should destroy mytheme" do
    assert_difference('Mytheme.count', -1) do
      delete :destroy, id: @mytheme
    end

    assert_redirected_to mythemes_path
  end
end
