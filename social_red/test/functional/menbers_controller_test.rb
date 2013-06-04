require 'test_helper'

class MenbersControllerTest < ActionController::TestCase
  setup do
    @menber = menbers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:menbers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create menber" do
    assert_difference('Menber.count') do
      post :create, menber: { group: @menber.group, student: @menber.student }
    end

    assert_redirected_to menber_path(assigns(:menber))
  end

  test "should show menber" do
    get :show, id: @menber
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @menber
    assert_response :success
  end

  test "should update menber" do
    put :update, id: @menber, menber: { group: @menber.group, student: @menber.student }
    assert_redirected_to menber_path(assigns(:menber))
  end

  test "should destroy menber" do
    assert_difference('Menber.count', -1) do
      delete :destroy, id: @menber
    end

    assert_redirected_to menbers_path
  end
end
