class Restaurant < ApplicationRecord
  validates :name, presence: true, uniqueness: true, length: {maximum: 80, minimum: 4}
  validates :specialty, presence: true, length: {maximum: 30, minimum: 4}
  validates :address, presence: true, length: {maximum: 50, minimum: 4}
  validates :neighborhood, presence: true, length: {maximum: 30, minimum: 4}
  validates :city, presence: true, length: {maximum: 20, minimum: 4}
  validates :state, presence: true, length: {maximum: 2, minimum: 2}
end
