class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :dining
  validates :user, uniqueness: { scope: :dining, message: "you're already a guest to this experience!" }
end
