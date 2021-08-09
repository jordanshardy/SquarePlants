require "application_system_test_case"

class PostsTest < ApplicationSystemTestCase
  setup do
    @post = posts(:one)
  end

  test "visiting the index" do
    visit posts_url
    assert_selector "h1", text: "Posts"
  end

  test "creating a Post" do
    visit posts_url
    click_on "New Post"

    fill_in "Age", with: @post.age
    fill_in "Content", with: @post.content
    fill_in "Grow medium", with: @post.grow_medium
    fill_in "Light type", with: @post.light_type
    fill_in "Name", with: @post.name
    fill_in "Room type", with: @post.room_type
    fill_in "Strain", with: @post.strain
    fill_in "Training method", with: @post.training_method
    fill_in "Watering", with: @post.watering
    click_on "Create Post"

    assert_text "Post was successfully created"
    click_on "Back"
  end

  test "updating a Post" do
    visit posts_url
    click_on "Edit", match: :first

    fill_in "Age", with: @post.age
    fill_in "Content", with: @post.content
    fill_in "Grow medium", with: @post.grow_medium
    fill_in "Light type", with: @post.light_type
    fill_in "Name", with: @post.name
    fill_in "Room type", with: @post.room_type
    fill_in "Strain", with: @post.strain
    fill_in "Training method", with: @post.training_method
    fill_in "Watering", with: @post.watering
    click_on "Update Post"

    assert_text "Post was successfully updated"
    click_on "Back"
  end

  test "destroying a Post" do
    visit posts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Post was successfully destroyed"
  end
end
