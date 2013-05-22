require 'test_helper'

class IdentityDocumentTypesControllerTest < ActionController::TestCase
  setup do
    @identity_document_type = identity_document_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:identity_document_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create identity_document_type" do
    assert_difference('IdentityDocumentType.count') do
      post :create, identity_document_type: { description: @identity_document_type.description }
    end

    assert_redirected_to identity_document_type_path(assigns(:identity_document_type))
  end

  test "should show identity_document_type" do
    get :show, id: @identity_document_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @identity_document_type
    assert_response :success
  end

  test "should update identity_document_type" do
    put :update, id: @identity_document_type, identity_document_type: { description: @identity_document_type.description }
    assert_redirected_to identity_document_type_path(assigns(:identity_document_type))
  end

  test "should destroy identity_document_type" do
    assert_difference('IdentityDocumentType.count', -1) do
      delete :destroy, id: @identity_document_type
    end

    assert_redirected_to identity_document_types_path
  end
end
