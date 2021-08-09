require "application_system_test_case"

class ListingsTest < ApplicationSystemTestCase
  setup do
    @listing = listings(:one)
  end

  test "visiting the index" do
    visit listings_url
    assert_selector "h1", text: "Listings"
  end

  test "creating a Listing" do
    visit listings_url
    click_on "New Listing"

    fill_in "Age", with: @listing.age
    check "Available" if @listing.available
    fill_in "Name", with: @listing.name
    fill_in "Post", with: @listing.post_id
    fill_in "Price", with: @listing.price
    fill_in "Quantity", with: @listing.quantity
    click_on "Create Listing"

    assert_text "Listing was successfully created"
    click_on "Back"
  end

  test "updating a Listing" do
    visit listings_url
    click_on "Edit", match: :first

    fill_in "Age", with: @listing.age
    check "Available" if @listing.available
    fill_in "Name", with: @listing.name
    fill_in "Post", with: @listing.post_id
    fill_in "Price", with: @listing.price
    fill_in "Quantity", with: @listing.quantity
    click_on "Update Listing"

    assert_text "Listing was successfully updated"
    click_on "Back"
  end

  test "destroying a Listing" do
    visit listings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Listing was successfully destroyed"
  end
end
