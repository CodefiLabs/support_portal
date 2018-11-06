require 'test_helper'

class TicketsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ticket = tickets(:one)
  end

  test "should get index" do
    get tickets_url
    assert_response :success
  end

  test "should get new" do
    get new_ticket_url
    assert_response :success
  end

  test "should create ticket" do
    assert_difference('Ticket.count') do
      post tickets_url, params: { ticket: { adjusted_time: @ticket.adjusted_time, client_id: @ticket.client_id, created_at: @ticket.created_at, created_by: @ticket.created_by, datetime: @ticket.datetime, end_time: @ticket.end_time, external_status: @ticket.external_status, id: @ticket.id, integer: @ticket.integer, internal_status: @ticket.internal_status, is_deleted: @ticket.is_deleted, priority_id: @ticket.priority_id, project_id: @ticket.project_id, reference: @ticket.reference, start_time: @ticket.start_time, title: @ticket.title, total_time: @ticket.total_time, update_at: @ticket.update_at, uploads: @ticket.uploads } }
    end

    assert_redirected_to ticket_url(Ticket.last)
  end

  test "should show ticket" do
    get ticket_url(@ticket)
    assert_response :success
  end

  test "should get edit" do
    get edit_ticket_url(@ticket)
    assert_response :success
  end

  test "should update ticket" do
    patch ticket_url(@ticket), params: { ticket: { adjusted_time: @ticket.adjusted_time, client_id: @ticket.client_id, created_at: @ticket.created_at, created_by: @ticket.created_by, datetime: @ticket.datetime, end_time: @ticket.end_time, external_status: @ticket.external_status, id: @ticket.id, integer: @ticket.integer, internal_status: @ticket.internal_status, is_deleted: @ticket.is_deleted, priority_id: @ticket.priority_id, project_id: @ticket.project_id, reference: @ticket.reference, start_time: @ticket.start_time, title: @ticket.title, total_time: @ticket.total_time, update_at: @ticket.update_at, uploads: @ticket.uploads } }
    assert_redirected_to ticket_url(@ticket)
  end

  test "should destroy ticket" do
    assert_difference('Ticket.count', -1) do
      delete ticket_url(@ticket)
    end

    assert_redirected_to tickets_url
  end
end
