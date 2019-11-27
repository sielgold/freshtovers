class Review < ApplicationRecord
  belongs_to :order
  validates :rating, presence: true, inclusion: { in: [1, 2, 3, 4, 5] }
end
