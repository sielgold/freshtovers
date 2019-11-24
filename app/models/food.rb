class Food < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :freshness, presence: true, inclusion: { in: [1, 2, 3, 4, 5] }
  validates :location, presence: true
  validates :description, presence: true
  validates :price, presence: true
end
