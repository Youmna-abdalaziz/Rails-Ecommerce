require "application_system_test_case"

class ShoppingProdutsTest < ApplicationSystemTestCase
  setup do
    @shopping_produt = shopping_produts(:one)
  end

  test "visiting the index" do
    visit shopping_produts_url
    assert_selector "h1", text: "Shopping Produts"
  end

  test "creating a Shopping produt" do
    visit shopping_produts_url
    click_on "New Shopping Produt"

    fill_in "Product", with: @shopping_produt.product_id
    fill_in "Quantity", with: @shopping_produt.quantity
    fill_in "Shopping cart", with: @shopping_produt.shopping_cart_id
    click_on "Create Shopping produt"

    assert_text "Shopping produt was successfully created"
    click_on "Back"
  end

  test "updating a Shopping produt" do
    visit shopping_produts_url
    click_on "Edit", match: :first

    fill_in "Product", with: @shopping_produt.product_id
    fill_in "Quantity", with: @shopping_produt.quantity
    fill_in "Shopping cart", with: @shopping_produt.shopping_cart_id
    click_on "Update Shopping produt"

    assert_text "Shopping produt was successfully updated"
    click_on "Back"
  end

  test "destroying a Shopping produt" do
    visit shopping_produts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Shopping produt was successfully destroyed"
  end
end
