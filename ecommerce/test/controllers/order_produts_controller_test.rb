require 'test_helper'

class OrderProdutsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order_produt = order_produts(:one)
  end

  test "should get index" do
    get order_produts_url
    assert_response :success
  end

  test "should get new" do
    get new_order_produt_url
    assert_response :success
  end

  test "should create order_produt" do
    assert_difference('OrderProdut.count') do
      post order_produts_url, params: { order_produt: { order_id: @order_produt.order_id, product_id: @order_produt.product_id, quantity: @order_produt.quantity, status: @order_produt.status, unit_price: @order_produt.unit_price } }
    end

    assert_redirected_to order_produt_url(OrderProdut.last)
  end

  test "should show order_produt" do
    get order_produt_url(@order_produt)
    assert_response :success
  end

  test "should get edit" do
    get edit_order_produt_url(@order_produt)
    assert_response :success
  end

  test "should update order_produt" do
    patch order_produt_url(@order_produt), params: { order_produt: { order_id: @order_produt.order_id, product_id: @order_produt.product_id, quantity: @order_produt.quantity, status: @order_produt.status, unit_price: @order_produt.unit_price } }
    assert_redirected_to order_produt_url(@order_produt)
  end

  test "should destroy order_produt" do
    assert_difference('OrderProdut.count', -1) do
      delete order_produt_url(@order_produt)
    end

    assert_redirected_to order_produts_url
  end
end
