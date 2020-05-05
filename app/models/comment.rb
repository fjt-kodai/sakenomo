class Comment < ApplicationRecord

  belongs_to :event
  belongs_to :user
  
  validates :event_id, :user_id, presence: true
  validates :content, presence: true, unless: :image?
end
