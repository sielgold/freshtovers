class Food < ApplicationRecord
  belongs_to :user
  has_many :order
  has_many :review, through: :order
  validates :name, presence: true
  validates :prepared_at, presence: true
  validates :location, presence: true
  validates :price, presence: true

  include AlgoliaSearch

  algoliasearch do
    attributes :name, :location, :price
  end
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  mount_uploader :photo, PhotoUploader

  def hours_passed
    if self.prepared_at.nil?
      0
    else
      ((Time.now - self.prepared_at) / 3600)
    end
  end
end
