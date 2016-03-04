require 'test_helper'

class PreguntasControllerTest < ActionController::TestCase
  test "should get guardar" do
    get :guardar
    assert_response :success
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get ordenar" do
    get :ordenar
    assert_response :success
  end

end
