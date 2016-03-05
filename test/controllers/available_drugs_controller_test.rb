require 'test_helper'

class AvailableDrugsControllerTest < ActionController::TestCase
  setup do
    @available_drug = available_drugs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:available_drugs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create available_drug" do
    assert_difference('AvailableDrug.count') do
      post :create, available_drug: { code: @available_drug.code, name: @available_drug.name, units: @available_drug.units }
    end

    assert_redirected_to available_drug_path(assigns(:available_drug))
  end

  test "should show available_drug" do
    get :show, id: @available_drug
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @available_drug
    assert_response :success
  end

  test "should update available_drug" do
    patch :update, id: @available_drug, available_drug: { code: @available_drug.code, name: @available_drug.name, units: @available_drug.units }
    assert_redirected_to available_drug_path(assigns(:available_drug))
  end

  test "should destroy available_drug" do
    assert_difference('AvailableDrug.count', -1) do
      delete :destroy, id: @available_drug
    end

    assert_redirected_to available_drugs_path
  end
end
