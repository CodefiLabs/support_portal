require "application_system_test_case"

class InternalNotesTest < ApplicationSystemTestCase
  setup do
    @internal_note = internal_notes(:one)
  end

  test "visiting the index" do
    visit internal_notes_url
    assert_selector "h1", text: "Internal Notes"
  end

  test "creating a Internal note" do
    visit internal_notes_url
    click_on "New Internal Note"

    click_on "Create Internal note"

    assert_text "Internal note was successfully created"
    click_on "Back"
  end

  test "updating a Internal note" do
    visit internal_notes_url
    click_on "Edit", match: :first

    click_on "Update Internal note"

    assert_text "Internal note was successfully updated"
    click_on "Back"
  end

  test "destroying a Internal note" do
    visit internal_notes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Internal note was successfully destroyed"
  end
end
