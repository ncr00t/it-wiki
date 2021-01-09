class Article < ApplicationRecord
  belongs_to :user
  belongs_to :theme

  has_one_attached :image

  validates :title, presence: true, uniqueness: true
  validates :body, presence: true
end
