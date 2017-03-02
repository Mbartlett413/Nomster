class Place < ApplicationRecord
  belongs_to :user
  validates :name, length: { minimum: 2, too_long: "%{count} Character is the maximum allowed" }, presence: true
  validates :address, presence: true
  validates :description, length: { maximum: 200, too_long: "%{count} Character is the maximum allowed" }, presence: true
end
