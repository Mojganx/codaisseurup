class Event < ApplicationRecord
  belongs_to :user


  validates :name, presence: true
  validates :description, presence: true
  validates :location, presence: true
  validates :price,  presence: true
  validates :capacity, presence: true
  validates :includes_food, presence: true
  validates :includes_drinks, presence: true
  validates :starts_at, presence: true
  validates :ends_at, presence: true
  validates :active, presence: true
  validates :user, presence: true

  #You can't really have an event without a start or end date. Add validations
  #to make sure both dates are entered and check if the end date is at least one day after the start date.

# validates :address, presence: true
#  validates :home_type, presence: true
#  validates :room_type, presence: true
#  validates :accommodate, presence: true
#  validates :bedroom_count, presence: true
#  validates :bathroom_count, presence: true
#  validates :listing_name, presence: true, length: { maximum: 50 }
#  validates :description, presence: true, length: { maximum: 500 }
  has_and_belongs_to_many :themes

end
