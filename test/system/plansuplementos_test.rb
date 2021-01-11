require "application_system_test_case"

class PlansuplementosTest < ApplicationSystemTestCase
  setup do
    @plansuplemento = plansuplementos(:one)
  end

  test "visiting the index" do
    visit plansuplementos_url
    assert_selector "h1", text: "Plansuplementos"
  end

  test "creating a Plansuplemento" do
    visit plansuplementos_url
    click_on "New Plansuplemento"

    click_on "Create Plansuplemento"

    assert_text "Plansuplemento was successfully created"
    click_on "Back"
  end

  test "updating a Plansuplemento" do
    visit plansuplementos_url
    click_on "Edit", match: :first

    click_on "Update Plansuplemento"

    assert_text "Plansuplemento was successfully updated"
    click_on "Back"
  end

  test "destroying a Plansuplemento" do
    visit plansuplementos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Plansuplemento was successfully destroyed"
  end
end
