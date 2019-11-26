class Food < ApplicationRecord
  belongs_to :user
  has_many :order
  validates :name, presence: true
  validates :freshness, presence: true, inclusion: { in: [1, 2, 3, 4, 5] }
  validates :location, presence: true
  validates :description, presence: true
  validates :price, presence: true

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  mount_uploader :photo, PhotoUploader
end
