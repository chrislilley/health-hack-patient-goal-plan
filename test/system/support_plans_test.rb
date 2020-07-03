require "application_system_test_case"

class SupportPlansTest < ApplicationSystemTestCase
  setup do
    @support_plan = support_plans(:one)
  end

  test "visiting the index" do
    visit support_plans_url
    assert_selector "h1", text: "Support Plans"
  end

  test "creating a Support plan" do
    visit support_plans_url
    click_on "New Support Plan"

    fill_in "Expectedofme", with: @support_plan.expectedOfMe
    fill_in "Expectedofsupport", with: @support_plan.expectedOfSupport
    fill_in "Goals", with: @support_plan.goals
    fill_in "Howamibestsupported", with: @support_plan.howAmIBestSupported
    fill_in "Longtermconditions", with: @support_plan.longTermConditions
    fill_in "Reviewdate", with: @support_plan.reviewDate
    fill_in "Support", with: @support_plan.support
    fill_in "Supportworkername", with: @support_plan.supportWorkerName
    fill_in "Supportworkerphone", with: @support_plan.supportWorkerPhone
    fill_in "Whatcanido", with: @support_plan.whatCanIDo
    fill_in "Whatsimportant", with: @support_plan.whatsImportant
    click_on "Create Support plan"

    assert_text "Support plan was successfully created"
    click_on "Back"
  end

  test "updating a Support plan" do
    visit support_plans_url
    click_on "Edit", match: :first

    fill_in "Expectedofme", with: @support_plan.expectedOfMe
    fill_in "Expectedofsupport", with: @support_plan.expectedOfSupport
    fill_in "Goals", with: @support_plan.goals
    fill_in "Howamibestsupported", with: @support_plan.howAmIBestSupported
    fill_in "Longtermconditions", with: @support_plan.longTermConditions
    fill_in "Reviewdate", with: @support_plan.reviewDate
    fill_in "Support", with: @support_plan.support
    fill_in "Supportworkername", with: @support_plan.supportWorkerName
    fill_in "Supportworkerphone", with: @support_plan.supportWorkerPhone
    fill_in "Whatcanido", with: @support_plan.whatCanIDo
    fill_in "Whatsimportant", with: @support_plan.whatsImportant
    click_on "Update Support plan"

    assert_text "Support plan was successfully updated"
    click_on "Back"
  end

  test "destroying a Support plan" do
    visit support_plans_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Support plan was successfully destroyed"
  end
end
