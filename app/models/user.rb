class User < ApplicationRecord
  has_many :orders
  has_many :foods
  has_many :reviews, through: :foods
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  mount_uploader :photo, PhotoUploader

  def avg_rating
    # reviews.pluck(:rating).sum / reviews.length
  end
end
