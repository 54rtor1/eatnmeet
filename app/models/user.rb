class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :bookings
  # has_many :dinings (role: host)
  has_many :dinings, through: :bookings # role: guest

  validates :email, presence: true, uniqueness: true
  validates :address, :country, :name, :role, :password, presence: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
