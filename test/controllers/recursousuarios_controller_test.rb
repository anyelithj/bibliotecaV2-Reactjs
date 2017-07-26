require 'test_helper'

class RecursousuariosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recursousuario = recursousuarios(:one)
  end

  test "should get index" do
    get recursousuarios_url
    assert_response :success
  end

  test "should get new" do
    get new_recursousuario_url
    assert_response :success
  end

  test "should create recursousuario" do
    assert_difference('Recursousuario.count') do
      post recursousuarios_url, params: { recursousuario: { cedula: @recursousuario.cedula, email: @recursousuario.email, id: @recursousuario.id, idlibro: @recursousuario.idlibro, libro: @recursousuario.libro } }
    end

    assert_redirected_to recursousuario_url(Recursousuario.last)
  end

  test "should show recursousuario" do
    get recursousuario_url(@recursousuario)
    assert_response :success
  end

  test "should get edit" do
    get edit_recursousuario_url(@recursousuario)
    assert_response :success
  end

  test "should update recursousuario" do
    patch recursousuario_url(@recursousuario), params: { recursousuario: { cedula: @recursousuario.cedula, email: @recursousuario.email, id: @recursousuario.id, idlibro: @recursousuario.idlibro, libro: @recursousuario.libro } }
    assert_redirected_to recursousuario_url(@recursousuario)
  end

  test "should destroy recursousuario" do
    assert_difference('Recursousuario.count', -1) do
      delete recursousuario_url(@recursousuario)
    end

    assert_redirected_to recursousuarios_url
  end
end
