require 'test_helper'

class CategoryMastersControllerTest < ActionController::TestCase
  setup do
    @category_master = category_masters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:category_masters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create category_master" do
    assert_difference('CategoryMaster.count') do
      post :create, :category_master => @category_master.attributes
    end

    assert_redirected_to category_master_path(assigns(:category_master))
  end

  test "should show category_master" do
    get :show, :id => @category_master.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @category_master.to_param
    assert_response :success
  end

  test "should update category_master" do
    put :update, :id => @category_master.to_param, :category_master => @category_master.attributes
    assert_redirected_to category_master_path(assigns(:category_master))
  end

  test "should destroy category_master" do
    assert_difference('CategoryMaster.count', -1) do
      delete :destroy, :id => @category_master.to_param
    end

    assert_redirected_to category_masters_path
  end
end
