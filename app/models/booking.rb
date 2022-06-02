class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :dining
  validates :status, presence: true

  #  validates [:user_id, :dining_id], uniquess: true
end
