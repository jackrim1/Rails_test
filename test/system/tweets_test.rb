require "application_system_test_case"

class TweetsTest < ApplicationSystemTestCase
  setup do
    @tweet = tweets(:one)
  end

  test "visiting the index" do
    visit tweets_url
    assert_selector "h1", text: "Tweets"
  end

  test "creating a Tweet" do
    visit tweets_url
    click_on "New Tweet"

    fill_in "Body", with: @tweet.body
    fill_in "Title", with: @tweet.title
    click_on "Create Tweet"

    assert_text "Tweet was successfully created"
    assert_selector "h1", text: "Tweets"
  end

  test "updating a Tweet" do
    visit tweet_url(@tweet)
    click_on "Edit", match: :first

    fill_in "Body", with: @tweet.body
    fill_in "Title", with: @tweet.title
    click_on "Update Tweet"

    assert_text "Tweet was successfully updated"
    assert_selector "h1", text: "Tweets"
  end

  test "destroying a Tweet" do
    visit edit_tweet_url(@tweet)
    click_on "Delete", match: :first
    click_on "Confirm"

    assert_text "Tweet was successfully destroyed"
  end
end
