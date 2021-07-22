class Article < ApplicationRecord
  belongs_to :user

  # Active Storage
  has_one_attached :thumbnail

  # Action Text from rails 6
  has_rich_text :body

  validates :title, { presence: true, uniqueness: true }
  validates :body, { presence: true, length: { minimum: 5 } }

  # method to resize images
  def optmized_image(image, width, height)
    image.variant(resize_to_fill: [width, height]).processed
  end
end
