require 'test_helper'

class PermissaoacessosControllerTest < ActionController::TestCase
  setup do
    @permissaoacesso = permissaoacessos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:permissaoacessos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create permissaoacesso" do
    assert_difference('Permissaoacesso.count') do
      post :create, permissaoacesso: { descricao: @permissaoacesso.descricao }
    end

    assert_redirected_to permissaoacesso_path(assigns(:permissaoacesso))
  end

  test "should show permissaoacesso" do
    get :show, id: @permissaoacesso
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @permissaoacesso
    assert_response :success
  end

  test "should update permissaoacesso" do
    patch :update, id: @permissaoacesso, permissaoacesso: { descricao: @permissaoacesso.descricao }
    assert_redirected_to permissaoacesso_path(assigns(:permissaoacesso))
  end

  test "should destroy permissaoacesso" do
    assert_difference('Permissaoacesso.count', -1) do
      delete :destroy, id: @permissaoacesso
    end

    assert_redirected_to permissaoacessos_path
  end
end
