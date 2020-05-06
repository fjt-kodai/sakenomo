class Event < ApplicationRecord

  has_many :participants
  has_many :users, through: :participants
  has_many :comments, dependent: :destroy
  belongs_to :organizer, class_name: 'User', foreign_key: 'organizer_id'
  belongs_to :venue, optional: true

  validates :title, :organizer_id, presence: true

end
