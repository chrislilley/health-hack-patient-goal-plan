require "application_system_test_case"

class ScheduleItemsTest < ApplicationSystemTestCase
  setup do
    @schedule_item = schedule_items(:one)
  end

  test "visiting the index" do
    visit schedule_items_url
    assert_selector "h1", text: "Schedule Items"
  end

  test "creating a Schedule item" do
    visit schedule_items_url
    click_on "New Schedule Item"

    check "Attended" if @schedule_item.attended
    fill_in "Scheduleddate", with: @schedule_item.scheduledDate
    fill_in "Scheduledtime", with: @schedule_item.scheduledTime
    fill_in "Subtitle", with: @schedule_item.subtitle
    fill_in "Title", with: @schedule_item.title
    click_on "Create Schedule item"

    assert_text "Schedule item was successfully created"
    click_on "Back"
  end

  test "updating a Schedule item" do
    visit schedule_items_url
    click_on "Edit", match: :first

    check "Attended" if @schedule_item.attended
    fill_in "Scheduleddate", with: @schedule_item.scheduledDate
    fill_in "Scheduledtime", with: @schedule_item.scheduledTime
    fill_in "Subtitle", with: @schedule_item.subtitle
    fill_in "Title", with: @schedule_item.title
    click_on "Update Schedule item"

    assert_text "Schedule item was successfully updated"
    click_on "Back"
  end

  test "destroying a Schedule item" do
    visit schedule_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Schedule item was successfully destroyed"
  end
end
