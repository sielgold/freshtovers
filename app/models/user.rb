class User < ApplicationRecord
  has_many :orders
  has_many :foods
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  mount_uploader :photo, PhotoUploader
end
