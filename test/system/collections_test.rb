require "application_system_test_case"

class CollectionsTest < ApplicationSystemTestCase
  setup do
    @collection = collections(:one)
  end

  test "visiting the index" do
    visit collections_url
    assert_selector "h1", text: "Collections"
  end

  test "should create collection" do
    visit collections_url
    click_on "New collection"

    fill_in "Collection date", with: @collection.collection_date
    fill_in "Item", with: @collection.item_id
    fill_in "User", with: @collection.user_id
    click_on "Create Collection"

    assert_text "Collection was successfully created"
    click_on "Back"
  end

  test "should update Collection" do
    visit collection_url(@collection)
    click_on "Edit this collection", match: :first

    fill_in "Collection date", with: @collection.collection_date
    fill_in "Item", with: @collection.item_id
    fill_in "User", with: @collection.user_id
    click_on "Update Collection"

    assert_text "Collection was successfully updated"
    click_on "Back"
  end

  test "should destroy Collection" do
    visit collection_url(@collection)
    click_on "Destroy this collection", match: :first

    assert_text "Collection was successfully destroyed"
  end
end
