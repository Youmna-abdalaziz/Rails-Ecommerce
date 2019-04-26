require 'test_helper'

class ShoppingProdutsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shopping_produt = shopping_produts(:one)
  end

  test "should get index" do
    get shopping_produts_url
    assert_response :success
  end

  test "should get new" do
    get new_shopping_produt_url
    assert_response :success
  end

  test "should create shopping_produt" do
    assert_difference('ShoppingProdut.count') do
      post shopping_produts_url, params: { shopping_produt: { product_id: @shopping_produt.product_id, quantity: @shopping_produt.quantity, shopping_cart_id: @shopping_produt.shopping_cart_id } }
    end

    assert_redirected_to shopping_produt_url(ShoppingProdut.last)
  end

  test "should show shopping_produt" do
    get shopping_produt_url(@shopping_produt)
    assert_response :success
  end

  test "should get edit" do
    get edit_shopping_produt_url(@shopping_produt)
    assert_response :success
  end

  test "should update shopping_produt" do
    patch shopping_produt_url(@shopping_produt), params: { shopping_produt: { product_id: @shopping_produt.product_id, quantity: @shopping_produt.quantity, shopping_cart_id: @shopping_produt.shopping_cart_id } }
    assert_redirected_to shopping_produt_url(@shopping_produt)
  end

  test "should destroy shopping_produt" do
    assert_difference('ShoppingProdut.count', -1) do
      delete shopping_produt_url(@shopping_produt)
    end

    assert_redirected_to shopping_produts_url
  end
end
