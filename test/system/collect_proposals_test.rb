require "application_system_test_case"

class CollectProposalsTest < ApplicationSystemTestCase
  setup do
    @collect_proposal = collect_proposals(:one)
  end

  test "visiting the index" do
    visit collect_proposals_url
    assert_selector "h1", text: "Collect proposals"
  end

  test "should create collect proposal" do
    visit collect_proposals_url
    click_on "New collect proposal"

    fill_in "Collection date", with: @collect_proposal.collection_date
    fill_in "Item", with: @collect_proposal.item_id
    fill_in "Status", with: @collect_proposal.status
    fill_in "User", with: @collect_proposal.user_id
    click_on "Create Collect proposal"

    assert_text "Collect proposal was successfully created"
    click_on "Back"
  end

  test "should update Collect proposal" do
    visit collect_proposal_url(@collect_proposal)
    click_on "Edit this collect proposal", match: :first

    fill_in "Collection date", with: @collect_proposal.collection_date
    fill_in "Item", with: @collect_proposal.item_id
    fill_in "Status", with: @collect_proposal.status
    fill_in "User", with: @collect_proposal.user_id
    click_on "Update Collect proposal"

    assert_text "Collect proposal was successfully updated"
    click_on "Back"
  end

  test "should destroy Collect proposal" do
    visit collect_proposal_url(@collect_proposal)
    click_on "Destroy this collect proposal", match: :first

    assert_text "Collect proposal was successfully destroyed"
  end
end
