require 'test_helper'

class OrganizationsControllerTest < ActionController::TestCase
  include Devise::TestHelpers

  setup do
    @organization = organizations(:one)
  end

  test 'should get index' do
    get :index
    assert_response :success
    assert_not_nil assigns(:organizations)
  end

  test 'should get new' do
    get :new
    assert_response :success
  end

=begin
  test 'should create organization' do
    assert_difference('Organization.count') do
      post :create, organization: {name: @organization.name, password: @organization.password,
                                   email: @organization.email, phoneNum: "1234566", url: "http://www.google.com", location: "Oregon",
                                   size: 1, password_confirmation: @organization.password, biography: "hahahahaha"}
    end

    assert_redirected_to organization_path(assigns(:organization))
  end
=end

  test 'should show organization' do
    get :show, id: @organization
    assert_response :success
  end

  test 'should get edit' do
    sign_in @organization
    get :edit, id: @organization
    assert_response :success
  end

=begin
  test 'should update organization' do
    patch :update, id: @organization, organization: { name: @organization.name, password: @organization.password, email: @organization.email, phoneNum: @organization.phoneNum }
    assert_redirected_to organization_path(assigns(:organization))
  end
=end

  test 'should destroy organization' do
    sign_in @organization
    assert_difference('Organization.count', -1) do
     delete :destroy, id: @organization
    end
    
    assert_redirected_to organizations_path
  end

end
