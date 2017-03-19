require 'test_helper'

class UserOrganizationRelationshipsControllerTest < ActionController::TestCase
  include Devise::TestHelpers

  setup do
    @user_organization_relationship = user_organization_relationships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_organization_relationships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_organization_relationship" do
    assert_difference('UserOrganizationRelationship.count') do
      post :create, user_organization_relationship: {  }
    end

    assert_redirected_to organizations_path
  end

  test "should show user_organization_relationship" do
    get :show, id: @user_organization_relationship
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_organization_relationship
    assert_response :success
  end

  test "should update user_organization_relationship" do
    patch :update, id: @user_organization_relationship, user_organization_relationship: {user_id: 10, organization_id: 11 }
    assert_redirected_to user_organization_relationship_path(assigns(:user_organization_relationship))
  end

  test "should destroy user_organization_relationship" do
    assert_difference('UserOrganizationRelationship.count', -1) do
      delete :destroy, id: @user_organization_relationship
    end

    assert_redirected_to user_organization_relationships_path
  end
end
