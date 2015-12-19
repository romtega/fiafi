require 'test_helper'

class FiadosControllerTest < ActionController::TestCase
  setup do
    @fiado = fiados(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fiados)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fiado" do
    assert_difference('Fiado.count') do
      post :create, fiado: { direccion: @fiado.direccion, email: @fiado.email, nombre: @fiado.nombre, rfc: @fiado.rfc, telefono: @fiado.telefono }
    end

    assert_redirected_to fiado_path(assigns(:fiado))
  end

  test "should show fiado" do
    get :show, id: @fiado
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fiado
    assert_response :success
  end

  test "should update fiado" do
    patch :update, id: @fiado, fiado: { direccion: @fiado.direccion, email: @fiado.email, nombre: @fiado.nombre, rfc: @fiado.rfc, telefono: @fiado.telefono }
    assert_redirected_to fiado_path(assigns(:fiado))
  end

  test "should destroy fiado" do
    assert_difference('Fiado.count', -1) do
      delete :destroy, id: @fiado
    end

    assert_redirected_to fiados_path
  end
end
