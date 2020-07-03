require 'test_helper'

class SupportPlansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @support_plan = support_plans(:one)
  end

  test "should get index" do
    get support_plans_url
    assert_response :success
  end

  test "should get new" do
    get new_support_plan_url
    assert_response :success
  end

  test "should create support_plan" do
    assert_difference('SupportPlan.count') do
      post support_plans_url, params: { support_plan: { expectedOfMe: @support_plan.expectedOfMe, expectedOfSupport: @support_plan.expectedOfSupport, goals: @support_plan.goals, howAmIBestSupported: @support_plan.howAmIBestSupported, longTermConditions: @support_plan.longTermConditions, reviewDate: @support_plan.reviewDate, support: @support_plan.support, supportWorkerName: @support_plan.supportWorkerName, supportWorkerPhone: @support_plan.supportWorkerPhone, whatCanIDo: @support_plan.whatCanIDo, whatsImportant: @support_plan.whatsImportant } }
    end

    assert_redirected_to support_plan_url(SupportPlan.last)
  end

  test "should show support_plan" do
    get support_plan_url(@support_plan)
    assert_response :success
  end

  test "should get edit" do
    get edit_support_plan_url(@support_plan)
    assert_response :success
  end

  test "should update support_plan" do
    patch support_plan_url(@support_plan), params: { support_plan: { expectedOfMe: @support_plan.expectedOfMe, expectedOfSupport: @support_plan.expectedOfSupport, goals: @support_plan.goals, howAmIBestSupported: @support_plan.howAmIBestSupported, longTermConditions: @support_plan.longTermConditions, reviewDate: @support_plan.reviewDate, support: @support_plan.support, supportWorkerName: @support_plan.supportWorkerName, supportWorkerPhone: @support_plan.supportWorkerPhone, whatCanIDo: @support_plan.whatCanIDo, whatsImportant: @support_plan.whatsImportant } }
    assert_redirected_to support_plan_url(@support_plan)
  end

  test "should destroy support_plan" do
    assert_difference('SupportPlan.count', -1) do
      delete support_plan_url(@support_plan)
    end

    assert_redirected_to support_plans_url
  end
end
