require "test_helper"

class CollectProposalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @collect_proposal = collect_proposals(:one)
  end

  test "should get index" do
    get collect_proposals_url
    assert_response :success
  end

  test "should get new" do
    get new_collect_proposal_url
    assert_response :success
  end

  test "should create collect_proposal" do
    assert_difference("CollectProposal.count") do
      post collect_proposals_url, params: { collect_proposal: { collection_date: @collect_proposal.collection_date, item_id: @collect_proposal.item_id, status: @collect_proposal.status, user_id: @collect_proposal.user_id } }
    end

    assert_redirected_to collect_proposal_url(CollectProposal.last)
  end

  test "should show collect_proposal" do
    get collect_proposal_url(@collect_proposal)
    assert_response :success
  end

  test "should get edit" do
    get edit_collect_proposal_url(@collect_proposal)
    assert_response :success
  end

  test "should update collect_proposal" do
    patch collect_proposal_url(@collect_proposal), params: { collect_proposal: { collection_date: @collect_proposal.collection_date, item_id: @collect_proposal.item_id, status: @collect_proposal.status, user_id: @collect_proposal.user_id } }
    assert_redirected_to collect_proposal_url(@collect_proposal)
  end

  test "should destroy collect_proposal" do
    assert_difference("CollectProposal.count", -1) do
      delete collect_proposal_url(@collect_proposal)
    end

    assert_redirected_to collect_proposals_url
  end
end
