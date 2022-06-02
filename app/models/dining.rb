class Dining < ApplicationRecord
  belongs_to :user # host
  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings # guest
  validates :date, :time, :category, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_one_attached :photo
end
