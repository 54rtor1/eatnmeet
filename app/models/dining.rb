class Dining < ApplicationRecord
  belongs_to :user # host
  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings # guest
  validates :date, :time, :category, presence: true
end
