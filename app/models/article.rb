class Article < ApplicationRecord
  validates :title, { presence: true, uniqueness: true }
  validates :body, { presence: true, length: { minimum: 5 } }
  has_rich_text :body
end
