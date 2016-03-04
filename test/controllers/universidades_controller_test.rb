require 'test_helper'

class UniversidadesControllerTest < ActionController::TestCase
  setup do
    @universidade = universidades(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:universidades)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create universidade" do
    assert_difference('Universidade.count') do
      post :create, universidade: { nombre: @universidade.nombre }
    end

    assert_redirected_to universidade_path(assigns(:universidade))
  end

  test "should show universidade" do
    get :show, id: @universidade
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @universidade
    assert_response :success
  end

  test "should update universidade" do
    patch :update, id: @universidade, universidade: { nombre: @universidade.nombre }
    assert_redirected_to universidade_path(assigns(:universidade))
  end

  test "should destroy universidade" do
    assert_difference('Universidade.count', -1) do
      delete :destroy, id: @universidade
    end

    assert_redirected_to universidades_path
  end
end
