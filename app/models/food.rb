class Food < ApplicationRecord
  belongs_to :user
  has_many :order
  validates :name, presence: true
  validates :freshness, presence: true, inclusion: { in: [1, 2, 3, 4, 5] }
  validates :location, presence: true
  validates :price, presence: true

  include AlgoliaSearch

  algoliasearch do
    attributes :name, :location, :freshness, :price
  end
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  mount_uploader :photo, PhotoUploader
end
