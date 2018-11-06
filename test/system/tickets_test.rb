require "application_system_test_case"

class TicketsTest < ApplicationSystemTestCase
  setup do
    @ticket = tickets(:one)
  end

  test "visiting the index" do
    visit tickets_url
    assert_selector "h1", text: "Tickets"
  end

  test "creating a Ticket" do
    visit tickets_url
    click_on "New Ticket"

    fill_in "Adjusted Time", with: @ticket.adjusted_time
    fill_in "Client", with: @ticket.client_id
    fill_in "Created At", with: @ticket.created_at
    fill_in "Created By", with: @ticket.created_by
    fill_in "Datetime", with: @ticket.datetime
    fill_in "End Time", with: @ticket.end_time
    fill_in "External Status", with: @ticket.external_status
    fill_in "Id", with: @ticket.id
    fill_in "Integer", with: @ticket.integer
    fill_in "Internal Status", with: @ticket.internal_status
    fill_in "Is Deleted", with: @ticket.is_deleted
    fill_in "Priority", with: @ticket.priority_id
    fill_in "Project", with: @ticket.project_id
    fill_in "Reference", with: @ticket.reference
    fill_in "Start Time", with: @ticket.start_time
    fill_in "Title", with: @ticket.title
    fill_in "Total Time", with: @ticket.total_time
    fill_in "Update At", with: @ticket.update_at
    fill_in "Uploads", with: @ticket.uploads
    click_on "Create Ticket"

    assert_text "Ticket was successfully created"
    click_on "Back"
  end

  test "updating a Ticket" do
    visit tickets_url
    click_on "Edit", match: :first

    fill_in "Adjusted Time", with: @ticket.adjusted_time
    fill_in "Client", with: @ticket.client_id
    fill_in "Created At", with: @ticket.created_at
    fill_in "Created By", with: @ticket.created_by
    fill_in "Datetime", with: @ticket.datetime
    fill_in "End Time", with: @ticket.end_time
    fill_in "External Status", with: @ticket.external_status
    fill_in "Id", with: @ticket.id
    fill_in "Integer", with: @ticket.integer
    fill_in "Internal Status", with: @ticket.internal_status
    fill_in "Is Deleted", with: @ticket.is_deleted
    fill_in "Priority", with: @ticket.priority_id
    fill_in "Project", with: @ticket.project_id
    fill_in "Reference", with: @ticket.reference
    fill_in "Start Time", with: @ticket.start_time
    fill_in "Title", with: @ticket.title
    fill_in "Total Time", with: @ticket.total_time
    fill_in "Update At", with: @ticket.update_at
    fill_in "Uploads", with: @ticket.uploads
    click_on "Update Ticket"

    assert_text "Ticket was successfully updated"
    click_on "Back"
  end

  test "destroying a Ticket" do
    visit tickets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ticket was successfully destroyed"
  end
end
