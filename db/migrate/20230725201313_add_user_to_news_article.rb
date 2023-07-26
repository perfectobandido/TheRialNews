class AddUserToNewsArticle < ActiveRecord::Migration[7.0]
  def change
    add_reference :news_articles, :user,  foreign_key: true
  end
end
