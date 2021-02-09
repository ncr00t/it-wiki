require 'spec_helper'

describe Article do
  context 'get articles with theme and search articles by letters' do
    it 'the articles with this theme is present'  do
      theme_name = Theme.first.try(:name)
      expect(theme_name.present?).to be true

      articles_with_theme = Article.get_articles_by_theme(theme_name)
      expect(articles_with_theme.present?).to be true
    end

    it 'the articles contains this letter'  do
      article_title = Article.first.try(:title)
      expect(article_title.present?).to be true

      first_letter = article_title[0]
      articles_contains_letter = Article.get_articles_by_letters(first_letter)
      expect(articles_contains_letter.present?).to be true
    end
  end
end