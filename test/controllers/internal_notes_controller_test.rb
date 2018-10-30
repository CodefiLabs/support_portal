require 'test_helper'

class InternalNotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @internal_note = internal_notes(:one)
  end

  test "should get index" do
    get internal_notes_url
    assert_response :success
  end

  test "should get new" do
    get new_internal_note_url
    assert_response :success
  end

  test "should create internal_note" do
    assert_difference('InternalNote.count') do
      post internal_notes_url, params: { internal_note: {  } }
    end

    assert_redirected_to internal_note_url(InternalNote.last)
  end

  test "should show internal_note" do
    get internal_note_url(@internal_note)
    assert_response :success
  end

  test "should get edit" do
    get edit_internal_note_url(@internal_note)
    assert_response :success
  end

  test "should update internal_note" do
    patch internal_note_url(@internal_note), params: { internal_note: {  } }
    assert_redirected_to internal_note_url(@internal_note)
  end

  test "should destroy internal_note" do
    assert_difference('InternalNote.count', -1) do
      delete internal_note_url(@internal_note)
    end

    assert_redirected_to internal_notes_url
  end
end
