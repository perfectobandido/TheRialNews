require "application_system_test_case"

class NewsArticlesTest < ApplicationSystemTestCase
  setup do
    @news_article = news_articles(:one)
  end

  test "visiting the index" do
    visit news_articles_url
    assert_selector "h1", text: "News articles"
  end

  test "should create news article" do
    visit news_articles_url
    click_on "New news article"

    fill_in "Body", with: @news_article.body
    fill_in "Title", with: @news_article.title
    click_on "Create News article"

    assert_text "News article was successfully created"
    click_on "Back"
  end

  test "should update News article" do
    visit news_article_url(@news_article)
    click_on "Edit this news article", match: :first

    fill_in "Body", with: @news_article.body
    fill_in "Title", with: @news_article.title
    click_on "Update News article"

    assert_text "News article was successfully updated"
    click_on "Back"
  end

  test "should destroy News article" do
    visit news_article_url(@news_article)
    click_on "Destroy this news article", match: :first

    assert_text "News article was successfully destroyed"
  end
end
