require "application_system_test_case"

class OrderProdutsTest < ApplicationSystemTestCase
  setup do
    @order_produt = order_produts(:one)
  end

  test "visiting the index" do
    visit order_produts_url
    assert_selector "h1", text: "Order Produts"
  end

  test "creating a Order produt" do
    visit order_produts_url
    click_on "New Order Produt"

    fill_in "Order", with: @order_produt.order_id
    fill_in "Product", with: @order_produt.product_id
    fill_in "Quantity", with: @order_produt.quantity
    fill_in "Status", with: @order_produt.status
    fill_in "Unit price", with: @order_produt.unit_price
    click_on "Create Order produt"

    assert_text "Order produt was successfully created"
    click_on "Back"
  end

  test "updating a Order produt" do
    visit order_produts_url
    click_on "Edit", match: :first

    fill_in "Order", with: @order_produt.order_id
    fill_in "Product", with: @order_produt.product_id
    fill_in "Quantity", with: @order_produt.quantity
    fill_in "Status", with: @order_produt.status
    fill_in "Unit price", with: @order_produt.unit_price
    click_on "Update Order produt"

    assert_text "Order produt was successfully updated"
    click_on "Back"
  end

  test "destroying a Order produt" do
    visit order_produts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Order produt was successfully destroyed"
  end
end
