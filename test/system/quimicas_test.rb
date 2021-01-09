require "application_system_test_case"

class QuimicasTest < ApplicationSystemTestCase
  setup do
    @quimica = quimicas(:one)
  end

  test "visiting the index" do
    visit quimicas_url
    assert_selector "h1", text: "Quimicas"
  end

  test "creating a Quimica" do
    visit quimicas_url
    click_on "New Quimica"

    click_on "Create Quimica"

    assert_text "Quimica was successfully created"
    click_on "Back"
  end

  test "updating a Quimica" do
    visit quimicas_url
    click_on "Edit", match: :first

    click_on "Update Quimica"

    assert_text "Quimica was successfully updated"
    click_on "Back"
  end

  test "destroying a Quimica" do
    visit quimicas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Quimica was successfully destroyed"
  end
end
