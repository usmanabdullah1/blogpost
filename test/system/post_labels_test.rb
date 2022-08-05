require "application_system_test_case"

class PostLabelsTest < ApplicationSystemTestCase
  setup do
    @post_label = post_labels(:one)
  end

  test "visiting the index" do
    visit post_labels_url
    assert_selector "h1", text: "Post labels"
  end

  test "should create post label" do
    visit post_labels_url
    click_on "New post label"

    click_on "Create Post label"

    assert_text "Post label was successfully created"
    click_on "Back"
  end

  test "should update Post label" do
    visit post_label_url(@post_label)
    click_on "Edit this post label", match: :first

    click_on "Update Post label"

    assert_text "Post label was successfully updated"
    click_on "Back"
  end

  test "should destroy Post label" do
    visit post_label_url(@post_label)
    click_on "Destroy this post label", match: :first

    assert_text "Post label was successfully destroyed"
  end
end
