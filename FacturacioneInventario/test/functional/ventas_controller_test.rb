require 'test_helper'

class VentasControllerTest < ActionController::TestCase
  setup do
    @venta = ventas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ventas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create venta" do
    assert_difference('Venta.count') do
      post :create, venta: { cantidad: @venta.cantidad, precio: @venta.precio, producto_id: @venta.producto_id }
    end

    assert_redirected_to venta_path(assigns(:venta))
  end

  test "should show venta" do
    get :show, id: @venta
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @venta
    assert_response :success
  end

  test "should update venta" do
    put :update, id: @venta, venta: { cantidad: @venta.cantidad, precio: @venta.precio, producto_id: @venta.producto_id }
    assert_redirected_to venta_path(assigns(:venta))
  end

  test "should destroy venta" do
    assert_difference('Venta.count', -1) do
      delete :destroy, id: @venta
    end

    assert_redirected_to ventas_path
  end
end
