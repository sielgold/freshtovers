class Order < ApplicationRecord
  belongs_to :food
  belongs_to :user
  has_many :review
end
