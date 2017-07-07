class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

    has_many :events
    has_one :profile
    has_many :bookings, dependent: :destroy
    has_many :booked_events, through: :bookings, source: :event

  def has_profile?
    profile.present? && profile.persisted?
  end

  def full_name
    profile.full_name
  end

end
