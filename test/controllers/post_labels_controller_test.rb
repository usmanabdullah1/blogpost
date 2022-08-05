require "test_helper"

class PostLabelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @post_label = post_labels(:one)
  end

  test "should get index" do
    get post_labels_url
    assert_response :success
  end

  test "should get new" do
    get new_post_label_url
    assert_response :success
  end

  test "should create post_label" do
    assert_difference("PostLabel.count") do
      post post_labels_url, params: { post_label: {  } }
    end

    assert_redirected_to post_label_url(PostLabel.last)
  end

  test "should show post_label" do
    get post_label_url(@post_label)
    assert_response :success
  end

  test "should get edit" do
    get edit_post_label_url(@post_label)
    assert_response :success
  end

  test "should update post_label" do
    patch post_label_url(@post_label), params: { post_label: {  } }
    assert_redirected_to post_label_url(@post_label)
  end

  test "should destroy post_label" do
    assert_difference("PostLabel.count", -1) do
      delete post_label_url(@post_label)
    end

    assert_redirected_to post_labels_url
  end
end
