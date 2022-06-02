class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :dining
  # validates :status, presence: true
  validates :user, uniqueness: { scope: :dining, message: "you're already a guest to this experience!" }

  #  validates [:user_id, :dining_id], uniquess: true
end
