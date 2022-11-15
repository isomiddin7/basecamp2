class Post < ApplicationRecord
    # after_destroy {notify admin of bad behavior}
    has_many :comments, dependent: :destroy
    validates :user_id, presence: true
    has_one_attached :image
    has_rich_text :body 
    
end
