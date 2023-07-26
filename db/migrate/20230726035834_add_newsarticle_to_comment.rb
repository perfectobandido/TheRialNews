class AddNewsarticleToComment < ActiveRecord::Migration[7.0]
  def change
    add_reference :comments, :news_article, foreign_key: true
  end
end
