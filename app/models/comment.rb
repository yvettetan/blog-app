class Comment < ApplicationRecord
  belongs_to :article
  validates :commenter, :body, presence: true
end
