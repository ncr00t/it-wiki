class Article < ApplicationRecord
  belongs_to :user
  belongs_to :theme
  validates :title, presence: true, uniqueness: true
  validates :body, presence: true
end
