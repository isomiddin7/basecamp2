class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user
  # has_rich_text :body
  has_many_attached :pictures
end
