class Article < ApplicationRecord
  default_scope { order(title: :asc) }

  belongs_to :user
  belongs_to :theme

  has_one_attached :image

  validates :title, presence: true, uniqueness: true
  validates :body, presence: true

  def self.get_articles_by_theme(theme_name)
    sanitize_name = sanitize_sql_like(theme_name)
    Article.includes(:theme)
           .where(themes: { name: sanitize_name })
  end

  def self.get_articles_by_letters(letters)
    sanitize_letters = "%#{sanitize_sql_like(letters)}%"
    Article.where(["title LIKE ? OR body LIKE ?", sanitize_letters, sanitize_letters])
  end
end
