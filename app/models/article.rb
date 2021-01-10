class Article < ApplicationRecord
  belongs_to :user
  belongs_to :theme

  has_one_attached :image

  validates :title, presence: true, uniqueness: true
  validates :body, presence: true

  def self.get_articles_by_theme(theme_name)
    theme = Theme.where(name: theme_name).first
    return nil unless theme
    articles = Article.where(theme_id: theme.id)
                      .order("created_at DESC")
    articles
  end

  def self.get_articles_by_letters(letters)
    sanitize_letters = "%#{sanitize_sql_like(letters)}%"
    Article.where(["title LIKE ? OR body LIKE ?", sanitize_letters, sanitize_letters])
  end
end
