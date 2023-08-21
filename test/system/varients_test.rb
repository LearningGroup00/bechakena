require "application_system_test_case"

class VarientsTest < ApplicationSystemTestCase
  setup do
    @varient = varients(:one)
  end

  test "visiting the index" do
    visit varients_url
    assert_selector "h1", text: "Varients"
  end

  test "should create varient" do
    visit varients_url
    click_on "New varient"

    fill_in "Color", with: @varient.color
    fill_in "Size", with: @varient.size
    fill_in "Sku", with: @varient.sku
    click_on "Create Varient"

    assert_text "Varient was successfully created"
    click_on "Back"
  end

  test "should update Varient" do
    visit varient_url(@varient)
    click_on "Edit this varient", match: :first

    fill_in "Color", with: @varient.color
    fill_in "Size", with: @varient.size
    fill_in "Sku", with: @varient.sku
    click_on "Update Varient"

    assert_text "Varient was successfully updated"
    click_on "Back"
  end

  test "should destroy Varient" do
    visit varient_url(@varient)
    click_on "Destroy this varient", match: :first

    assert_text "Varient was successfully destroyed"
  end
end
