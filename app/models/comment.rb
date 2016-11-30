class Comment < ApplicationRecord
  validates :message, presence: true, length: {maximum: 50, minimum: 10}
  validates :author, presence: true, length: {maximum: 20, minimum: 3}

  belongs_to :restaurant
end
