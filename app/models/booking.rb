class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :dining
  validates :status, presence: true
end
