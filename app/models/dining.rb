class Dining < ApplicationRecord
  belongs_to :user # host
  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings # guest
  validates :date, :time, :category, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch::Model
  pg_search_scope :search_by_address,
    against: [ :address ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
